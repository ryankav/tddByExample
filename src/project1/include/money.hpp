#ifndef PROJECT1_MONEY_H
#define PROJECT1_MONEY_H
class Dollar {
  public:
    int amount;

    Dollar() = default;
    Dollar(int amount): amount(amount) {}

    void times(int mult) {
      amount *= mult;
    }
};

#endif

