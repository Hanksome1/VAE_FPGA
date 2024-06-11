#include <iostream>
#include <fstream>
#include <string>
#include <limits>
#include <filesystem>

namespace fs = std::filesystem;

double find_max_abs_in_file(const std::string& filename) {
    std::ifstream file(filename);
    
    if (!file.is_open()) {
        std::cerr << "Unable to open file " << filename << std::endl;
        return std::numeric_limits<double>::lowest();
    }

    double max_abs_value = std::numeric_limits<double>::lowest();
    std::string line;

    while (std::getline(file, line)) {
        try {
            double value = std::stod(line);
            double abs_value = std::abs(value);
            if (abs_value > max_abs_value) {
                max_abs_value = abs_value;
            }
        } catch (const std::invalid_argument& e) {
            std::cerr << "Invalid number in file: " << line << std::endl;
            continue;
        } catch (const std::out_of_range& e) {
            std::cerr << "Number out of range in file: " << line << std::endl;
            continue;
        }
    }

    file.close();
    return max_abs_value;
}

int main() {
	std::string name; 
	std::cout << "input the biginning string of the filename in this directory: "; 
	std::cin >> name; 
    std::string directory_path = ".";  // current directory

    for (const auto& entry : fs::directory_iterator(directory_path)) {
        if (entry.is_regular_file()) {
            std::string filename = entry.path().string();
            if (filename.find(name) != std::string::npos) {
                double max_value = find_max_abs_in_file(filename);
                std::cout << "The maximum value in file " << filename << " is: " << max_value << std::endl;
            }
        }
    }

    return 0;
}

