#include <iostream>
#include <list>
using namespace std;

// Algorithm 1: Simulation Approach
int simulateHotPotato(int N, int M) {
    list<int> circle;
    for (int i = 1; i <= N; i++) {
        circle.push_back(i);
    }
    
    auto it = circle.begin();
    while (circle.size() > 1) {
        for (int count = 1; count < M; count++) {
            it++;
            if (it == circle.end()) {
                it = circle.begin();
            }
        }
        it = circle.erase(it);
        if (it == circle.end()) {
            it = circle.begin();
        }
    }
    
    return circle.front();
}

// Algorithm 2: Mathematical Approach
int calculateWinnerPosition(int N, int M) {
    return (M % N) + 1;
}

int main() {
    int M, N;
    
    // Test case 1
    M = 0;
    N = 5;
    cout << "Winner using Simulation Approach: " << simulateHotPotato(N, M) << endl;
    cout << "Winner using Mathematical Approach: " << calculateWinnerPosition(N, M) << endl;
    
    // Test case 2
    M = 1;
    N = 5;
    cout << "Winner using Simulation Approach: " << simulateHotPotato(N, M) << endl;
    cout << "Winner using Mathematical Approach: " << calculateWinnerPosition(N, M) << endl;
    
    // Test case 3
    M = 3;
    N = 7;
    cout << "Winner using Simulation Approach: " << simulateHotPotato(N, M) << endl;
    cout << "Winner using Mathematical Approach: " << calculateWinnerPosition(N, M) << endl;
    
    return 0;
}
