import { State } from 'count';

const state = State.new();

const count = document.getElementById('count');
const increment = document.getElementById('increment');
const decrement = document.getElementById('decrement');

count.innerText = state.count;

increment.addEventListener('click', () => {
    state.increment();
    count.innerText = state.count;
});

decrement.addEventListener('click', () => {
    state.decrement();
    count.innerText = state.count;
});
