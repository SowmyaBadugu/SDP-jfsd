package com.klef.jfsd.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klef.jfsd.model.Faculty;

import java.io.File;
import java.io.IOException;

@Service
public class FileUploadService {

    private static final String UPLOAD_DIR = "/path/to/upload/directory"; // Change this to your preferred path

    public String uploadMaterial(MultipartFile material, Faculty faculty) {
        if (material.isEmpty()) {
            return "Please select a file to upload.";
        }

        try {
            // Create the directory if it doesn't exist
            File directory = new File(UPLOAD_DIR);
            if (!directory.exists()) {
                directory.mkdirs();
            }

            // Save the file
            String filePath = UPLOAD_DIR + "/" + material.getOriginalFilename();
            material.transferTo(new File(filePath));

            // You can save the file path in the database if needed, related to the faculty and course
            // For example, save this path to a CourseMaterial entity

            return "File uploaded successfully!";
        } catch (IOException e) {
            e.printStackTrace();
            return "File upload failed: " + e.getMessage();
        }
    }
}
