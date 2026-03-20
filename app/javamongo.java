import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;

class javamongo {
    public static void main(String args[]){
        MongoClient mongoose = new MongoClient("localhost",27017);

        MongoDatabase database = mongoose.getDatabase("myDB");

        database.createCollection("sampleCollection");
        System.out.println("Collection created successfully!");

        MongoCollection<Document> collection = database.getCollection("sampleCollection");
        Document document = new Document("title", "First MongoDB Doc")
        .append("description", "Adi on MongoDB")
        .append("dob",15032005)
        .append("email","aditya.tiwari1503@gmail.com");

        collection.insertOne(document);
        System.out.println("Document inserted successfully!");
    }
}