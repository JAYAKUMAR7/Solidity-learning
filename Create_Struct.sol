// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Create_Struct{

    struct Todo{
        string text;
        bool completed;
    }

    //An array of 'Todo' structs

    Todo[] public todos;

    function create(string calldata _text) public{
        // 3 ways to initialize a strict.

        // - calling it like a function.
        todos.push(Todo({text: _text, completed: false})); // 1

        //Initialize an empty struct and then update it.
        Todo memory todo;
        todo.text = _text;                                 //2 (Use anyone method to run remaining make them comment)

        //todo.completed initialized to false.
        todos.push(todo);                                 //3
    }

    // Solidity automatically created a getter for 'todos' so.
    // you don't actually need this function.

    function get(uint _index) public view returns(string memory text, bool completed){
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    //Update text
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    //update completed
    function toggleCompleted(uint _index) public{
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }


}