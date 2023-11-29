document.querySelector('.menu-icon').addEventListener('click', function () {
    document.querySelector('nav').classList.toggle('show-menu');
  });

  function toggleDescription(element) {
    const description = element.nextElementSibling;
    description.style.display = description.style.display === 'block' ? 'none' : 'block';
  }