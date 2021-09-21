#include <iostream>
#include <stack>
#include <stdexcept>
using namespace std;

template <class T>
class CircularArray
{
private:
    T *array;
    int capacity;
    int back, front;

public:
    CircularArray();
    CircularArray(int _capacity);
    virtual ~CircularArray();
    void push_front(T data);
    void push_back(T data);
    void insert(T data, int pos);
    T pop_front();
    T pop_back();
    bool is_full();
    bool is_empty();
    int size();
    void clear();
    T &operator[](int);
    void sort();
    bool is_sorted();
    void reverse();
    string to_string(string sep=" ");

    void display();

private:
    int next(int);
    int prev(int);
};

template <class T>
void CircularArray<T>::display()
{
    int a=front;
    for (int i = 0; i < size(); i++){
        cout << (*this)[a] << ",";
        a=next(a);
    }
}

template <class T>
CircularArray<T>::CircularArray()
{
    CircularArray(0);
}

template <class T>
CircularArray<T>::CircularArray(int _capacity)
{
    this->array = new T[_capacity];
    this->capacity = _capacity;
    this->front = this->back = -1;
}

template <class T>
CircularArray<T>::~CircularArray()
{
    delete[] array;
}

template <class T>
int CircularArray<T>::prev(int index)
{
    return (index == 0) ? capacity - 1 : index - 1;
}

template <class T>
int CircularArray<T>::next(int index)
{
    return (index + 1) % capacity;
}

template <class T>
string CircularArray<T>::to_string(string sep)
{
    string result = "";
    for (int i = 0; i < size(); i++)
        result += std::to_string((*this)[i]) + sep;
    return result;
}

//*****************************************************

template <class T>
bool CircularArray<T>::is_full(){
    return (size() == capacity)? true : false;
}

template <class T>
void CircularArray<T>::insert(T data, int pos){
    int a=front;
    for (int i = 0; i <pos; i++)
    {
        a=next(a);
    }
    array[a]=data;
}

template <class T>
bool CircularArray<T>::is_empty(){
    return (front == -1) && (back==-1);
}


template<class T>
void CircularArray<T>::push_back(T data){
    if(is_empty()){
        front=front+1;
        back=back+1;
        array[front]=data;
    }
    else if(is_full()){
        array[front]=data;
        front=next(front);
        back=next(back);
        cout << "array full"<<endl;
        return;
    }
    else{
        back=next(back);
        array[back]=data;
    }
}


template <class T>
void CircularArray<T>::push_front(T data){
    if(is_empty()){
        front=next(front);
        back=next(back);
        array[0]=data;
    }
    else{
        if(is_full()){
            front=prev(front);
            back=prev(back);
            array[front]=data;
        }
        else{
            front=prev(front);
            array[front]=data;
        }
    }
}

template <class T>
T CircularArray<T>::pop_front(){
    if(is_empty()){
        throw("is empty");
    }
    else{
        T a =array[back];
        array[back] = 0;
        ++back;
        return a;
    }
}


template <class T>
T CircularArray<T>::pop_back(){
    if(is_empty()){
        cout<<"queue empty"<<endl;
        return 0;
    }
    int temp = *(this -> array + this -> back);
    *(this -> array + this->back) = -1;
    if (front == back){
        front = back = -1;
    }
    else{
        back = prev(back);
    }
    return temp;
}


template <class T>
void CircularArray<T>::clear(){
    T* temp = new T[capacity];
    array = temp;
    delete temp;
}

template <class T>
int CircularArray<T>::size(){
    if(is_empty())  return 0;
    return front > back ? (capacity-front+back+1) : (back-front+1);
}



template <class T>
T &CircularArray<T>::operator[](int i){
    return array[i];
}


template <class T>
void CircularArray<T>::sort(){
    for(int i = 0; i<size(); i++){
        for(int j = i+1; j<size(); j++){
            if((*this)[front+j] < (*this)[front+i]){
                T temp = (*this)[front+i];
                array[front+i] = array[front+j];
                array[front+j] = temp;
            }
        }
    }
}


template <class T>
bool CircularArray<T>::is_sorted(){
    CircularArray<T>* array2 = new CircularArray<int>(capacity);
    int front2=front;
    for (int i = 0; i < size(); i++){
        array2->push_back(array[front2]);
        front2=next(front2);
    }
    array2->sort();
    for (int i = 0; i < size(); i++){
        if( array[front + i] != (*array2)[front + i]){
            return false;
        }
    }
    return true;
}

template <class T>
void CircularArray<T>::reverse(){
    stack<int> stack;
    int a=front;
    for (int i = 0; i < size(); i++) {
        stack.push(array[a]);
        a=next(a);
    }
    a=front;
    while (!stack.empty()){
        array[a] = stack.top();
        stack.pop();
        a=next(a);
    }
}

