import Typed from 'typed.js'
const loadDynamicBannerText = () => {
  new Typed ('#banner-typed-text', {
    strings: ["Little Fly,","Thy summer's play", "My thoughtless hand", "Has brushed away.", "Am not I", "A fly like thee?", "Or art not thou", "A man like me?","For I dance,", "And drink, and sing,", "Till some blind hand", "Shall brush my wing.", "If thought is life", "And strength and breath,", "And the want", "Of thought is death;","Then am I", "A happy fly.", " If I live,", "Or if I die."],
    typeSpeed: 80,
    loop: true
  });
}

export {loadDynamicBannerText};
