import React from 'react'

function Rainy() {
    return(
        <h1>Bring your umbrella!</h1>
    );
}

function Sunny() {
    return(
        <h1>Bring your sunglasses!</h1>
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
        <Sunny />
    );
}

export default function App() {
    return(
        <div>
            <p>Conditional Demo #3</p>
            <RainOrShine isRainy={false}/>
        </div>
    );
}