import React from 'react'

function OnHand() {
    return(
        <div class="onHand">        
            <h2>My Strawhat</h2>
            <h2>Gum gum Fruit</h2>
            <NotOnHand />
        </div>

    );
}

function NotOnHand() {
    return(
        <div class="notOnHand">         
            <h2>The Red Vest!</h2>        
        </div>
    );
}

function OnHandFalse() {
    return(
        <div class="false">         
            <h2>My Strawhat</h2>
            <h2>Gum gum Fruit</h2>
            <h2>The Red Vest!</h2>        
        </div>
    );
}

function OnHandOrNot(props) {
    const isOnHand = props.isOnHand;
    if(isOnHand) {
        return(
            <OnHand />
        );
    }
    return(
        <OnHandFalse />
    );
}

export default function App() {
    return(
        <div>
            <h1>Things to Bring</h1>
            <OnHandOrNot isOnHand={true}/>
        </div>
    );
}