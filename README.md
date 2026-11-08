# Стоматология «Инлайт» — сайт

Проект подготовлен по той же схеме, что и сайт из `demo-main`:

- React 19 + TypeScript + Vite 7 + Tailwind CSS 4
- `vite-plugin-singlefile`
- локальные фотографии импортируются из `src/assets/images/`
- production-сборка создаёт один автономный файл `dist/index.html` (HTML, CSS, JavaScript и фотографии встроены в него)
- относительный `base: "./"` для корректной работы на GitHub Pages

## Сборка на Windows

1. Установите Node.js 22 LTS: https://nodejs.org/
2. Запустите `СОБРАТЬ_САЙТ.bat` двойным щелчком.
3. После успешной сборки откройте `dist/index.html` в браузере.

Или вручную в терминале из этой папки:

```bash
npm ci
npm run build
```

## Что публиковать на GitHub Pages

Публикуется **содержимое папки `dist`**, а не исходный `index.html` из корня проекта. В `dist/index.html` находится уже собранный сайт; он не обращается к `src/main.tsx`.

Исходники проекта (`src`, `package.json`, `vite.config.ts` и т. д.) храните в ветке `main`. Для публикации содержимого `dist` используйте отдельную ветку `gh-pages` и в GitHub откройте **Settings → Pages → Build and deployment → Deploy from a branch**, выберите `gh-pages` и `/ (root)`.

Не загружайте `node_modules`. Папка `dist` создаётся командой сборки.
