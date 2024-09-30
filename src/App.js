// src/App.js
import React, { useEffect } from 'react';
import $ from 'jquery';
import Header from './components/Header';
import Footer from './components/Footer';
import './styles.css';

const App = () => {
    useEffect(() => {
        // Sử dụng jQuery để thay đổi nội dung
        $('#welcome-message').text('This is a simple React app with jQuery!');
    }, []);

    return (
        <div className="App">
            <Header />
            <div className="container mt-4">
                <h2 id="welcome-message">Welcome to My App!</h2>
                <p>This app demonstrates the integration of React, CSS, and jQuery.</p>
            </div>
            <Footer />
        </div>
    );
};

export default App;
