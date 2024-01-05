import React from 'react';
import './TodoList.module.css';

class TodoList extends React.Component {
    render() {
        return(
            <div>
                <h1 class="todo">My ToDo List</h1>
                <div>
                    <input type="checkbox" id="Studying" name="interest" value="Studying" />
                    <label for="Studying">Studying</label>
                </div>
                <div>
                    <input type="checkbox" id="Playing" name="interest" value="Playing" />
                    <label for="Playing">Playing</label>
                </div>
                <div>
                    <input type="checkbox" id="Cleaning" name="interest" value="Cleaning" />
                    <label for="Cleaning">Cleaning</label>
                </div>
            </div>
        )
    }
}

export default TodoList;