package com.example.repository;

import com.mongodb.MongoException;
import com.mongodb.client.*;
import org.bson.Document;

import java.util.ArrayList;

public class PeopleRepository {

    private MongoCollection<Document> collection;

    public PeopleRepository() {
        MongoClient client = DBConnection.getClient();
        MongoDatabase database = client.getDatabase("db01");
        collection = database.getCollection("people");
    }

    public void savePeople(People people){
        Document newDocument = new Document()
                .append("name", people.getName())
                .append("age", people.getAge())
                .append("salary", people.getSalary());

        // 문서 추가
        collection.insertOne(newDocument);
        System.out.println("저장 완료");
    }

    public ArrayList<People> findAll(){
        ArrayList<People> list = new ArrayList();

        for(Document document : collection.find()) {
            String name = document.getString("name");
            int age = document.getInteger("age");
            int salary = document.getInteger("salary");

            People people = new People(name, age, salary);
            list.add(people);
        }
        return list;
    }

}
