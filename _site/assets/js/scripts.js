

// assets/js/scripts.js

document.addEventListener('DOMContentLoaded', () => {
    const toggleButton = document.getElementById('theme-toggle');
    const currentTheme = localStorage.getItem('theme') || (window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light');
  
    document.documentElement.setAttribute('data-theme', currentTheme);
  
    if (currentTheme === 'dark') {
      toggleButton.textContent = '☀️';
    } else {
      toggleButton.textContent = '🌙';
    }
  
    toggleButton.addEventListener('click', () => {
      let theme = 'light';
      if (document.documentElement.getAttribute('data-theme') === 'light') {
        theme = 'dark';
      }
      document.documentElement.setAttribute('data-theme', theme);
      localStorage.setItem('theme', theme);
      toggleButton.textContent = theme === 'dark' ? '☀️' : '🌙';
    });
  });
  