# DOGemP &mdash; Dojo Online de Go em Português

> Eu escolhi criar este site com Flutter mais como um experimento para ver como Flutter se comporta na versão web.

- [No Baduk Club](https://baduk.club/league/dogemp)
- [A planilha que eu utilizava para gerenciar o dojo](https://docs.google.com/spreadsheets/d/1Nmf-qVtF1t-IQWB7Dul8G3B17y-wuyXiWfwxvFVyAbI/edit#gid=0)
- [A apresentação no YouTube](https://youtu.be/to7fZW3wLZ8)
- Inspirado pelo [Yunguseng Dojang](https://yunguseng.com/)

## 1. Como "compilar" o site...

## 1.1. Instruções

Até aqui, o que eu faço é:

1. `flutter build web --release --web-renderer html`
1. Copio a pasta `/build/web` para o projeto [`dogemp_build`](https://github.com/FanaroEngineering/dogemp_build)
1. [Retiro a linha `<base href="/">` do `index.html`](https://stackoverflow.com/a/64415472/4756173)
1. O projeto fica ao vivo no site [fanaroengineering.github.io/dogemp_build](https://fanaroengineering.github.io/dogemp_build/)

## 1.2. Referências

- [Building a web application with Flutter](https://docs.flutter.dev/get-started/web)
- [Build and release a web app](https://docs.flutter.dev/deployment/web)
- [HTML vs CanvasKit Renderers](https://github.com/flutter/flutter/issues/76009)
- [Run Flutter Web HTML Renderer](https://youtu.be/yLNczKeqXyo)
- [Flutter Web e Github Pages with Blank Content](https://stackoverflow.com/a/64415472/4756173)