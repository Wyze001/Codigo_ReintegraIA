const navToggle = document.querySelector(".nav-toggle");
const mainNav = document.querySelector(".main-nav");
const navLinks = document.querySelectorAll(".main-nav a");
const contactForm = document.querySelector("#contactForm");
const feedback = document.querySelector(".form-feedback");

navToggle?.addEventListener("click", () => {
  const isOpen = mainNav.classList.toggle("is-open");
  navToggle.setAttribute("aria-expanded", String(isOpen));
});

navLinks.forEach((link) => {
  link.addEventListener("click", () => {
    mainNav.classList.remove("is-open");
    navToggle?.setAttribute("aria-expanded", "false");
  });
});

const sections = [...document.querySelectorAll("main section[id]")];

const updateActiveLink = () => {
  const current = sections
    .filter((section) => section.getBoundingClientRect().top <= 120)
    .pop();

  navLinks.forEach((link) => {
    link.classList.toggle("is-active", current && link.hash === `#${current.id}`);
  });
};

window.addEventListener("scroll", updateActiveLink, { passive: true });
updateActiveLink();

contactForm?.addEventListener("submit", (event) => {
  event.preventDefault();
  contactForm.reset();
  feedback.textContent = "Mensaje registrado para la demo del landing page.";
});
