#include <iostream>
#include <fstream>
#include <string>
#include <filesystem>
#include <cmath>

namespace fs = std::filesystem;

void process_file(const std::string& filename) {
    std::ifstream file(filename);
    
    if (!file.is_open()) {
        std::cerr << "Unable to open file " << filename << std::endl;
        return;
    }

    // Create the new filename by appending "_integer" before the extension
    std::string new_filename = filename.substr(0, filename.find_last_of(".")) + "_integer.txt";
    std::ofstream new_file(new_filename);

    if (!new_file.is_open()) {
        std::cerr << "Unable to create file " << new_filename << std::endl;
        return;
    }

    std::string line;
    while (std::getline(file, line)) {
        try {
            double value = std::stod(line);
            int int_value = static_cast<int>(std::round(value * 128.0));
            if (int_value > 1024) {
                int_value = 1024;
            }
            new_file << int_value << std::endl;
        } catch (const std::invalid_argument& e) {
            std::cerr << "Invalid number in file: " << line << std::endl;
            continue;
        } catch (const std::out_of_range& e) {
            std::cerr << "Number out of range in file: " << line << std::endl;
            continue;
        }
    }

    file.close();
    new_file.close();
}

int main() {
    std::string directory_path = ".";  // current directory

    for (const auto& entry : fs::directory_iterator(directory_path)) {
        if (entry.is_regular_file()) {
            std::string filename = entry.path().string();
            if (filename.find("decoder") != std::string::npos) {
                process_file(filename);
            }
        }
    }

    return 0;
}

