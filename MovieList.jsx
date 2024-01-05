import React from 'react'

class MovieList extends React.Component {
    render() {
        return(
            <div>
                <h1>My Movie Recommendations</h1>
                <ul>
                    <ol>Interstellar</ol>
                    <ol>Spiderman</ol>
                    <ol>Parasite</ol>
                </ul>
            </div>
        )
    }
}

export default MovieList;