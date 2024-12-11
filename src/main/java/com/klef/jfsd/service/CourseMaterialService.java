package com.klef.jfsd.service;

import org.springframework.stereotype.Service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service
public class CourseMaterialService {

    private static final String UPLOAD_DIR = "/path/to/upload/directory"; // The directory where files are stored

    public List<String> getAvailableMaterials() {
        List<String> materials = new ArrayList<>();
        File folder = new File(UPLOAD_DIR);
        
        // List all files in the directory
        if (folder.exists() && folder.isDirectory()) {
            for (File file : folder.listFiles()) {
                if (file.isFile()) {
                    materials.add(file.getName());
                }
            }
        }

        return materials;
    }
}
