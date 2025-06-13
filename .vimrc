" Включаем использование системного буфера
set clipboard=unnamedplus

" Задержка в мс для сочетаний клавиш
set timeoutlen=500

" Табуляция и отступы
set tabstop=2
set shiftwidth=2
set expandtab

" Python использует 4 пробела для отступов
autocmd FileType python setlocal tabstop=4 shiftwidth=4

" Кодировка текста
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,cp866

" Поиск по тексту
set hlsearch " подсвечивать результаты поиска

" Перемещение по тексту
" Когда достигаем границ строки, то перемещаемся на предыдующую/следующую
set whichwrap+=h,l,<,>,[,]

" Визуальные настройки

" Включаем номера строк
set number

" Отображение скрытых символов
set list
set listchars=tab:»·,trail:·,nbsp:␣,extends:>,precedes:<

" Настройки автодополнения
set completeopt=menu,menuone,noselect

" Разделение экрана
set splitbelow " разбивать вниз
set splitright " разбивать вправо

" Задержка CursorHold
set updatetime=100

" Игнорировать 'No write since last change' (буфер не сохранен)
set hidden

" Отключить создание бекапов, своп-файлов и файлов отмены
set nobackup noundofile noswapfile

" Эти комментарии потенциально опасны
set nomodeline

" Включаем автоматическое обновление буфера
set autoread

" Обновляем буфер при изменении файла внешними инструментами
autocmd FocusGained,BufEnter * checktime

" Переход в нормальный режим
inoremap <C-s> <Esc>
vnoremap <C-s> <ESC>

" Использование h, j, k, l для перемещения с зажатым Ctrl в режиме редактирования
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" Переместиться в начало строки
inoremap <C-0> <Home>
" Переместиться в конец строки
inoremap <C-$> <End>
" Переместиться к первому непробельному символу
inoremap <C-^> <Home>

" Клавиши leader и альтернативная основной
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" Копирование в системный буфер
vnoremap <leader>c "+y
vnoremap <leader>y ggVG"+y

" Вставка из системного буфера
vnoremap <leader>p "+p

" Выделение всего текста
nnoremap <leader>a mmggVG

" Очистить результаты поиска
nnoremap <leader>h :noh<CR>

" Переключение между вкладками
nnoremap <leader>t :tabnext<CR>
nnoremap <leader>T :tabprevious<CR>

" Список вкладок
nnoremap <leader>tl :tabs<CR>

nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>tm :tabmove<CR>

" Редактировать файл в новой вкладке
nnoremap <leader>te :tabedit |

" Выбор вкладки
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<CR>

" Разбиение окон
nnoremap <leader>s :split<CR>

" Выбор окна
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Сделать окна одного размера
nnoremap <leader>= <C-w>=

" Переключения между буферами
nnoremap <leader>b :bnext<CR>
nnoremap <leader>B :bprevious<CR>
nnoremap <leader>l :ls<CR>
nnoremap <leader>d :bd<CR>

" Скрыть/раскрыть блок кода
nnoremap <leader>z za

" Добавление и удаление отступов
nnoremap > >>
nnoremap < <<
vnoremap < <gv
vnoremap > >gv

" Сохранение и закрытие
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Бинды для макросов
nnoremap <leader>n @n
nnoremap <leader>m @m

" Сохранить файл с sudo
" https://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! w !sudo tee > /dev/null %

" Редактирование конфига
nnoremap <leader>ev :tabedit $MYVIMRC<CR>

" Применить конфиг
nnoremap <leader>sv :so $MYVIMRC<CR>
