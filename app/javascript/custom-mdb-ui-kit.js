// NOTE: turboを利用しているとバリデーションエラー時の再描画時にフォームのoutlineが正しく表示されない問題に対処
// 本質的なところではないので覚える必要はない

import mdb from "mdb-ui-kit"

const mdbInputUpdate = () => {
    document.querySelectorAll('.form-outline').forEach((formOutline) => {
        new mdb.Input(formOutline).init();
    });
}

document.addEventListener('turbo:render', () => {
    mdbInputUpdate();
});
// コメントを新規作成した際にテキストフィールドのアウトラインが表示されなくなる不具合への対応
document.addEventListener('turbo:frame-render', () => {
    mdbInputUpdate();
});

document.addEventListener('turbo:submit-end', () => {
    setTimeout(
        mdbInputUpdate,
        100
    )
});