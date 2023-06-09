package com.example.repository;

import com.mongodb.ConnectionString;
import com.mongodb.MongoClientSettings;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;

public class DBConnection {

    private static final String connectionString = "mongodb://localhost:27017"; // MongoDB 서버 주소

    public static MongoClient getClient() {
        try {
            ConnectionString connString = new ConnectionString(connectionString);
            MongoClientSettings settings = MongoClientSettings.builder()
                    .applyConnectionString(connString)
                    .build();
            return MongoClients.create(settings);
        } catch (Exception e) {
            throw new RuntimeException("Failed to connect to MongoDB: " + e.getMessage());
        }
    }

}