
http://d5smib-apc001lk.corp.dev.vtb/release/3.0/?path=/docs/welcome-разработчику--for-developers-1

Сделано по мотивам

Дизайн-токены

Дизайн-токены — это набор базовых переменных и миксинов в коде, которые применяются при назначении стиля компоненту, например, цвета, шрифта, тени, скругления. Использование токенов позволяет легко поддерживать визуальную консистентность интерфейсов и облегчает разработку.

Для дизайнеров: 
в Фигме созданы стили, которые совпадают с дизайн-токенами в коде.

Для разработчиков: 
определен список дизайн-токенов, который покрывает большинство кейсов с использованием стилей.
Семантика

Для задания названий дизайн-токенов применяются следующие схемы:

тип токена
+
_размер
:
значение
тип токена
+
_состояние/статус
:
значение

Base

$base 1rem относительный базовый размер
$baseRemSize 4px значение токена $base

Border

$border_radius_base 4px // базовое скругление со всех сторон
$border_radius_base_top 4px 4px 0 0 // базовое скругление сверху
$border_radius_base_bottom 0 0 4px 4px // базовое скругление снизу
$border_radius_card 8px // скругление карточек
$border_radius_card_top 8px 8px 0 0 // скругление рабочей области сверху
$border_width_base 1px // базовая толщина обводки полей ввода
$border_width_active 2px // толщина обводки полей ввода в активном состоянии


Брейкпоинты

Название
Screen size
Колонки
Межколонник
Отступы
Extra Small
0 — 599
4
24
16
Small
600 — 1023
8
24
24
Medium
1024 — 1263
12
24
44
Large
1264 — 1455
12
24
44
Extra Large
> 1456
12
24
44
Дизайн-токены брейкпоинтов
Поведение сетки Базового лейаута

360
4 Columns

16
600
8 Columns

24
1024
12 Columns

44
1264
12 Columns

44
240
1456
12 Columns

44
240
При ширине экрана 1456 и больше — рабочая область фиксируется по центру экрана, добавляются левый и правый отступы на странице.

>1456
12 Columns

44
240
Рекомедации

Интерфейс интернет-банка 12-колоночный и поддерживает ширину экрана устройств > 1024 px. px. Если ширина меньше, то добавляется горизонтальный скролл.
Для удобства проектирования страниц интернет-банка используйте лейауты шириной 1264 px. При этой ширине отображается боковое меню, а рабочая область имееет минимальную ширину.
Для проектирования адаптивных интерфейсов используйте рекомендованные ширины экрана:
Диапазон
Ширина экрана в рх
Ширина колонки
Xs
320
54
S
768
69
Md
1024
56
Lg
1264
56
Xl
1920
72

Colors

Текст

$c_text_primary #22242A // Основной цвет текста
$c_text_secondary #7B7E86 // Дополнительный цвет текста
$c_text_white #FFFFFF // Цвет текста на темном фоне
$c_text_disabled #9A9EA5 // Disabled цвет текста в полях
$c_text_disabled_light #B1B5BB // Disabled светлый цвет текста в полях
$c_text_placeholder #7B7E86 // Цвет текста плейсхолдера
$c_text_placeholder_active #B1B5BB // Цвет текста плейсхолдера в активном состоянии

Интерактивные компоненты (кнопки, ссылки)

$c_action #0062FF // Default
$c_action_hover #0142D3 // Hover
$c_action_pressed #022D9A // Pressed
$c_action_disabled #9A9EA5 // Disabled
$c_action_light #6FA3FF // Ссылки на темном фоне

Успешные действия

$c_success #1BA049 // Default
$c_success_light #32C665 // Цвет фона

Критические действия, ошибки

$c_danger #D92020 // Default
$c_danger_hover #A71212 // Hover
$c_danger_pressed #780A0A // Pressed
$c_danger_light #F64E4E // Цвет фона


Предупреждения

$c_warning #FF5C22 // Default

Линии, разделители

$c_line_primary #E5E7EB // Линии в табах, аккордеоне
$c_line_secondary #D6D8DE // Линии в групповых чекбоксах

Границы полей ввода

$c_border_base #B1B5BB // Default
$c_border_active #0062FF // Active
$c_border_error #D92020 // Error
$c_border_positive #1BA049 // Positive
$c_border_date #22242A // Курсор выбора даты

Иконки

$c_icon_fill #B1B5BB // Fill
$c_icon_outline #7B7E86 // Outline
$c_icon_hover #0062FF // Hover
$c_icon_pressed #0142D3 // Pressed
$c_icon_white #FFFFFF // Иконки на темном фоне
$c_icon_blue_light #3A85FF // Иконки на темном фоне

Бэкграунды

$c_bg_primary #FFFFFF // Рабочая область, лайтбокс, хедер, карточки, поля ввода
$c_bg_secondary #F3F4F6 // Фон страниц
$c_bg_dark #37383C // Информеры
$c_bg_hover #F3F4F6 // Hover полей ввода
$c_bg_disabled #E5E7EB // Disabled полей ввода

Дополнительные цвета

$c_add_blue_10 #EDF5FF // line notification info status accordiondropzone hover
$c_add_blue_20 #D6E4FE // tag blue
$c_add_blue_40 #6FA3FF // switcher on disabled status neutral
$c_add_blue_50 #3A85FF // system notification info
$c_add_green_10 #EAFCF1 // line notification success
$c_add_green_20 #B6F1C9 // tag green
$c_add_green_40 #32C665 // line notification success status positive
$c_add_orange_10 #FFF1E5 // line notification warn
$c_add_orange_20 #FFD7C3 // tag orange
$c_add_red_10 #FFEFEF // line notification error
$c_add_red_20 #FFD4D4 // tag red
$c_add_red_50 #F64E4E // system notification error status negative
$c_add_grey_10 #E5E7EB // tag grey choicechips
$c_add_grey_20 #D6D8DE // choicechips hover

Оpacity

$c_opacity_light_hover #000000, opacity: 0.05 // Hover на светлых поверхностях
$c_opacity_light_focus #000000, opacity: 0.1 // Focus на светлых поверхностях
$c_opacity_light_pressed #000000, opacity: 0.16 // Pressed на светлых поверхностях
$c_opacity_light_screen #000000, opacity: 0.4 // Прозрачность различных элементов, например, затемнение экрана или скролла
$c_opacity_dark_hover #FFFFFF, opacity: 0.08 // Hover на темных поверхностях
$c_opacity_dark_focus #FFFFFF, opacity: 0.14 // Focus на темных поверхностях
$c_opacity_dark_pressed #FFFFFF, opacity: 0.2 // Pressed на темных поверхностях
$c_opacity_dark_screen #FFFFFF, opacity: 0.6 // Цвет вторичных элементов на черных поверхностях

Font

$font "VTBGroupUI" // шрифт дизайн-системы
$font_size_sm 3 * $base // размер шрифта 12px
$font_size_m 3.5 * $base // размер шрифта 14px
$font_size_md 4 * $base // размер шрифта 16px
$font_size_lg 4.5 * $base // размер шрифта 18px
$font_size_xl 5 * $base // размер шрифта 20px
$font_size_2xl 6 * $base // размер шрифта 24px
$font_size_3xl 7 * $base // размер шрифта 28px
$font_size_4xl 8.5 * $base // размер шрифта 34px
$font_size_5xl 10 * $base // размер шрифта 40px
$font_size_6xl 12 * $base // размер шрифта 48px
$font_size_7xl 14 * $base // размер шрифта 56px
$line_height_sm 4 * $base // высота строки 16px
$line_height_m 5 * $base // высота строки 20px
$line_height_md 6 * $base // высота строки 24px
$line_height_lg 7 * $base // высота строки 28px
$line_height_xl 8 * $base // высота строки 32px
$line_height_2xl 9 * $base // высота строки 36px
$line_height_3xl 11 * $base // высота строки 44px
$line_height_4xl 13 * $base // высота строки 52px
$line_height_5xl 15 * $base // высота строки 60px
$font_weight_book 400 // начертание для обычного текста
$font_weight_medium 500 // начертание для кнопок
$font_weight_semibold 550 // начертание для заголовков

@mixin font_style
($size, $height, $weight)
{font-size: $size; font-weight: $weight; line-height: $height; }
шрифтовой миксин
@mixin heading_large_1
{ @include font_style ($font_size_7xl, $line_height_5xl, $font_weight_semibold) }
56 / 60 / 550
@mixin heading_large_2
{ @include font_style ($font_size_6xl, $line_height_4xl, $font_weight_semibold) }
48 / 52 / 550
@mixin heading_1
{ @include font_style ($font_size_5xl, $line_height_3xl, $font_weight_semibold) }
40 / 44 / 550
@mixin heading_2
{ @include font_style ($font_size_4xl, $line_height_2xl, $font_weight_semibold) }
34 / 36 / 550
@mixin heading_3
{ @include font_style ($font_size_3xl, $line_height_xl, $font_weight_semibold) }
28 / 32 / 550
@mixin heading_4
{ @include font_style ($font_size_2xl, $line_height_lg, $font_weight_semibold) }
24 / 28 / 550
@mixin heading_5
{ @include font_style ($font_size_xl, $line_height_md, $font_weight_semibold) }
20 / 24 / 550
@mixin heading_6
{ @include font_style ($font_size_lg, $line_height_md, $font_weight_semibold) }
18 / 24 / 550
@mixin subtitle_18
{ @include font_style ($font_size_lg, $line_height_lg, $font_weight_book) }
18 / 28 / 400
@mixin subtitle_16
{ @include font_style ($font_size_md, $line_height_md, $font_weight_semibold) }
16 / 24 / 550
@mixin subtitle_14
{ @include font_style ($font_size_m, $line_height_m, $font_weight_semibold) }
14 / 20 / 550
@mixin body_long_16
{ @include font_style ($font_size_md, $line_height_md, $font_weight_book) }
16 / 24 / 400
@mixin body_small_16
{ @include font_style ($font_size_md, $line_height_m, $font_weight_book) }
16 / 20 / 400
@mixin body_long_14
{ @include font_style ($font_size_m, $line_height_m, $font_weight_book) }
14 / 20 / 400
@mixin body_small_14
{ @include font_style ($font_size_m, $line_height_sm, $font_weight_book) }
14 / 16 / 400
@mixin caption_12
{ @include font_style ($font_size_sm, $line_height_sm, $font_weight_book) }
12 / 16 / 400
@mixin button_16
{ @include font_style ($font_size_md, $line_height_md, $font_weight_medium) }
16 / 24 / 500
@mixin button_14
{ @include font_style ($font_size_m, $line_height_m, $font_weight_medium) }
14 / 20 / 500
@mixin button_12
{ @include font_style ($font_size_sm, $line_height_sm, $font_weight_medium) }
12 / 16 / 500


Shadow

$shadow_2 0 0.5px 1px rgba(105, 108, 115, 0.12) 
0 1.5px 2px rgba(105, 108, 115, 0.05)
0 3px 4px rgba(105, 108, 115, 0.04) 0 5px 10px rgba(105, 108, 115, 0.03) //
тень для карточек на сером фоне
$shadow_4
0 1px 4px rgba(105, 108, 115, 0.12)
0 4px 4px rgba(105, 108, 115, 0.09)
0 8px 12px rgba(105, 108, 115, 0.07)
0 15px 30px rgba(105, 108, 115, 0.04)
0 -1px 2px rgba(105, 108, 115, 0.08)
тень для дропдауна
$shadow_card
0 0 1px rgba(34, 36, 42, 0.1)
0 0 3px rgba(34, 36, 42, 0.05)
0 0 20px rgba(34, 36, 42, 0.08)
тень для карточек default
$shadow_card_hover
0 0 1px rgba(34, 36, 42, 0.1)
0 0 3px rgba(34, 36, 42, 0.2)
0 0 20px rgba(34, 36, 42, 0.12)
тень для карточек hover
$shadow_workzone
0 1px 5px rgba(105, 108, 115, 0.07)
0 2px 8px rgba(105, 108, 115, 0.05)
0 2px 12px rgba(105, 108, 115, 0.04)
тень рабочей области

Spacing

$space_3xs $base // спейсинг 4px
$space_2xs 2 * $base // спейсинг 8px
$space_xs 3 * $base // спейсинг 12px
$space_sm 4 * $base // спейсинг 16px
$space_m 5 * $base // спейсинг 20px
$space_md 6 * $base // спейсинг 24px
$space_lg 8 * $base // спейсинг 32px
$space_xl 10 * $base // спейсинг 40px
$space_2xl 12 * $base // спейсинг 48px
$space_3xl 14 * $base // спейсинг 56px
$space_4xl 16 * $base // спейсинг 64px
$space_5xl 24 * $base // спейсинг 96px

Transition

@mixin transition_hover
	($property) {
transition-property: $property;
transition-duration: 0.2s;
transition-timing-function: ease;
}

анимация контролов: чекбоксы, радиобаттоны
