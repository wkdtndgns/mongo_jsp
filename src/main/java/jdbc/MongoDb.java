package jdbc;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.util.ArrayList;
import java.util.List;
import org.bson.Document;
import vo.UserVo;

public class MongoDb {
  private static final String CONNECTION_URI = "mongodb://root:1234@localhost:27017";
  private static final String DATABASE_NAME = "db01";
  private static final String COLLECTION_NAME = "people";

  private MongoClient mongoClient;
  private MongoDatabase database;

  public MongoDb() {
    connectToDatabase();
  }

  public void connectToDatabase() {
    MongoClientURI uri = new MongoClientURI(CONNECTION_URI);
    mongoClient = new MongoClient(uri);
    database = mongoClient.getDatabase(DATABASE_NAME);
    System.out.println("Connected to database successfully");
  }

  public void closeConnection() {
    mongoClient.close();
    System.out.println("Connection closed successfully");
  }

  public void insert(UserVo userVo){
    MongoCollection<Document> collection = database.getCollection(COLLECTION_NAME);
    Document doc = new Document("name", userVo.getName()).append("age", userVo.getAge()).append("salary", userVo.getSalary());
    collection.insertOne(doc);
    System.out.println("Document inserted successfully");
  }

  public List<Document> findAll(){
    MongoCollection<Document> collection = database.getCollection(COLLECTION_NAME);
    FindIterable<Document> docs = collection.find().sort(new Document("salary", -1));;
    List<Document> documents = new ArrayList<>();
    for (Document doc : docs) {
      System.out.println("Document: " + doc);
      documents.add(doc);
    }
    return documents;
  }
}
