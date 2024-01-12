import React from 'react'

function Rainy() {
    return(
        <h1>Bring your umbrella!</h1>
    );
}

function RainOrShine(props) {
    const isRainy = props.isRainy;
    if(isRainy) {
        return(
            <Rainy />
        );
    }
    return(
        <h1>No rain today!</h1>
    );
}

export default function App() {
    return(
        <div>
            <p>Conditional Demo #2</p>
            <RainOrShine isRainy={true}/>
        </div>
    );
}