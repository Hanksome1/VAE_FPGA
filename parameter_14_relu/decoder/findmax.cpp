#include <iostream>
#include <fstream>
#include <string>
#include <limits>

int main() {
    std::string filename = "decoder.0.bias.txt";
    std::ifstream file(filename);
    
    if (!file.is_open()) {
        std::cerr << "Unable to open file " << filename << std::endl;
        return 1;
    }

    double max_value = std::numeric_limits<double>::lowest();
    std::string line;

    while (std::getline(file, line)) {
        try {
            double value = std::stod(line);
            if (value > max_value) {
                max_value = value;
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

    std::cout << "The maximum value is: " << max_value << std::endl;

    return 0;
}


