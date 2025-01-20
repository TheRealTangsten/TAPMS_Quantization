#include <iostream>
#include <vector>
#include <random>
#include "Eigen/Dense"
#include <algorithm>
#include <chrono>

// Dimensiunile vectorului
std::vector<size_t> VECTOR_SIZE_LIST = {100000, 1000000, 10000000, 100000000, 1000000000};

// Funcție pentru calculul cal_quant_int
int cal_quant_int(double nr, double min = 0.01, double max = 1.0, int int_limit = 256) {
    double S = (max - min) / (int_limit - 1);
    int Z = int_limit - static_cast<int>(max / S);
    int Q = (static_cast<int>(nr / S) + Z) % int_limit;
    return Q;
}

// Funcție pentru calculul cal_quant_int2
int cal_quant_int2(double nr) {
    return static_cast<int>(nr * 255);
}

// Funcție pentru generarea unei liste de numere aleatoare
std::vector<double> generate_random_list(size_t N) {
    std::vector<double> random_list;
    random_list.reserve(N);

    std::random_device rd;  // Sursă de entropie
    std::mt19937 gen(rd()); // Motor de generare aleatoare
    std::uniform_real_distribution<> dist(0.0, 1.0); // Distribuție uniformă între [0, 1]

    for (size_t i = 0; i < N; ++i) {
        random_list.push_back(dist(gen));
    }

    return random_list;
}

// Funcție pentru Alg1
void give_Alg1_time(std::vector<double>& list, size_t size) {
    double minn = *std::min_element(list.begin(), list.end());
    double maxx = *std::max_element(list.begin(), list.end());

    auto time_start = std::chrono::high_resolution_clock::now();

    for (size_t i = 0; i < list.size(); ++i) {
        list[i] = cal_quant_int(list[i], minn, maxx);
    }

    auto time_end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> total_time = time_end - time_start;

    std::cout << "Alg1 time: " << total_time.count() << " seconds with vector size: " << size << std::endl;
}

// Funcție pentru Alg2
void give_Alg2_time(std::vector<double>& list, size_t size) {
    auto time_start = std::chrono::high_resolution_clock::now();

    for (size_t i = 0; i < list.size(); ++i) {
        list[i] = cal_quant_int2(list[i]);
    }

    auto time_end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> total_time = time_end - time_start;

    std::cout << "Alg2 time: " << total_time.count() << " seconds with vector size: " << size << std::endl;
}

// Funcție pentru generarea unei liste de valori aleatoare între 0 și 1
Eigen::VectorXd generate_random_list(int N) {
    Eigen::VectorXd random_list(N);
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<> dis(0.0, 1.0);

    for (int i = 0; i < N; ++i) {
        random_list(i) = dis(gen);
    }
    return random_list;
}

// Funcție pentru calculul cal_quant_int_vectorized
Eigen::VectorXi cal_quant_int_vectorized(const Eigen::VectorXd& nr, int int_limit = 256) {
    double min = nr.minCoeff();
    double max = nr.maxCoeff();
    double S = (max - min) / (int_limit - 1);
    int Z = int_limit - static_cast<int>(max / S);

    Eigen::ArrayXi Q = ((nr.array() / S).cast<int>() + Z).unaryExpr([int_limit](int x) {
        return x % int_limit; // Modulo aplicat fiecărui element
    });
    return Q.matrix();
}

// Funcție pentru calculul cal_quant_int2_vectorized
Eigen::VectorXd cal_quant_int2_vectorized(const Eigen::VectorXd& nr) {
    return nr * 255.0;
}

// Funcție pentru măsurarea timpului Alg1
void give_Alg1_time_vectorized(const Eigen::VectorXd& list, int size) {
    auto start = std::chrono::high_resolution_clock::now();
    cal_quant_int_vectorized(list);
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;
    std::cout << "Alg1 vectorized time: " << elapsed.count() << " seconds with vector size: " << size << "\n";
}

// Funcție pentru măsurarea timpului Alg2
void give_Alg2_time_vectorized(const Eigen::VectorXd& list, int size) {
    auto start = std::chrono::high_resolution_clock::now();
    cal_quant_int2_vectorized(list);
    auto end = std::chrono::high_resolution_clock::now();
    std::chrono::duration<double> elapsed = end - start;
    std::cout << "Alg2 vectorized time: " << elapsed.count() << " seconds with vector size: " << size << "\n";
}



int main() {
    // Iterăm peste dimensiunile vectorului
    for (const auto& size : VECTOR_SIZE_LIST) {
        std::vector<double> values = generate_random_list(size);
        std::cout << "Processing vector of size: " << size << std::endl;
        give_Alg1_time(values, size);
        give_Alg2_time(values, size);
        std::cout << "---------------------------------------" << std::endl;
    }
//    for (int size : VECTOR_SIZE_LIST) {
//        Eigen::VectorXd values = generate_random_list(size);
//        give_Alg1_time_vectorized(values, size);
//        give_Alg2_time_vectorized(values, size);
//        std::cout << "---------------------------------------\n";
//    }

    return 0;
}
