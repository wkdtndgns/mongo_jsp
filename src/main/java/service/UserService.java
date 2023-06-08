package service;

import java.util.List;
import jdbc.MongoDb;
import org.bson.Document;
import vo.UserVo;

public class UserService {

  MongoDb mb = new MongoDb();

  public void addUser(UserVo userVo) {
    mb.connectToDatabase();
    mb.insert(userVo);
    mb.closeConnection();
  }

  public List<Document> getAllUsers() {

    mb.connectToDatabase();
    List<Document> users = mb.findAll();
    mb.closeConnection();
    return users;
  }
}
