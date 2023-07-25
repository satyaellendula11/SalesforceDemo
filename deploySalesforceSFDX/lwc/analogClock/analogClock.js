import { LightningElement } from 'lwc';

export default class AnalogClock extends LightningElement {
    renderedCallback() {
        // Call the updateClock function when the component is fully rendered
        this.updateClock();

        // Set an interval to update the clock every second
        this.intervalId = setInterval(() => {
            this.updateClock();
        }, 1000);
    }

    disconnectedCallback() {
        // Clear the interval when the component is disconnected to avoid memory leaks
        clearInterval(this.intervalId);
    }

    updateClock() {
        const now = new Date();
        const seconds = now.getSeconds();
        const minutes = now.getMinutes();
        const hours = now.getHours();

        // Calculate rotation angles for clock hands (in degrees)
        const secondHandDeg = (seconds / 60) * 360;
        const minuteHandDeg = ((minutes * 60 + seconds) / 3600) * 360;
        const hourHandDeg = ((hours % 12 + minutes / 60) * 360) / 12;

        // Get references to the clock hands elements
        const secondHand = this.template.querySelector('.second-hand');
        const minuteHand = this.template.querySelector('.minute-hand');
        const hourHand = this.template.querySelector('.hour-hand');

        // Apply the rotation to the clock hands using CSS transform property
        if (secondHand) secondHand.style.transform = `translate(-50%, -100%) rotate(${secondHandDeg}deg)`;
        if (minuteHand) minuteHand.style.transform = `translate(-50%, -100%) rotate(${minuteHandDeg}deg)`;
        if (hourHand) hourHand.style.transform = `translate(-50%, -100%) rotate(${hourHandDeg}deg)`;
    }
}
