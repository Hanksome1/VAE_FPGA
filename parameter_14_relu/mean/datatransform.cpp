#include <iostream>
#include <fstream>
#include <string>
#include <limits>
#include <filesystem>

namespace fs = std::filesystem;

void double2integer(const std::string& filename) {
    std::ifstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Unable to open input file " << filename << std::endl;
        return;
    }

    std::string newfilename = filename+ "new";
    std::ofstream outfile(newfilename);
    if (!outfile.is_open()) {
        std::cerr << "Unable to open output file " << newfilename << std::endl;
        file.close();
        return;
    }

    std::string line;
    while (std::getline(file, line)) {
        try {
            double value = std::stod(line);
            int num_int = static_cast<int>(128 * value);
            if (num_int >= 1024) num_int = 1024;
            outfile << num_int << "\n";

        } catch (const std::invalid_argument& e) {
            std::cerr << "Invalid number in file: " << line << std::endl;
            continue;
        } catch (const std::out_of_range& e) {
            std::cerr << "Number out of range in file: " << line << std::endl;
            continue;
        }
    }

    outfile.close();
    file.close();
}

int main() {
    std::string name;
    std::cout << "Input the beginning string of the filename in this directory: ";
    std::cin >> name;
    std::string directory_path = ".";  // current directory

    for (const auto& entry : fs::directory_iterator(directory_path)) {
        if (entry.is_regular_file()) {
            std::string filename = entry.path().filename().string();
            if (filename.find(name) == 0) {  // Match files starting with 'name'
                double2integer(entry.path().string());
                std::cout << filename << " finished transformation" << std::endl;
            }
        }
    }

    return 0;
}

