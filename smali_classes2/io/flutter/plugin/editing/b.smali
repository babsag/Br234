.class Lio/flutter/plugin/editing/b;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "InputConnectionAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:I

.field private final c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

.field private final d:Landroid/text/Editable;

.field private final e:Landroid/view/inputmethod/EditorInfo;

.field private f:I

.field private g:Landroid/view/inputmethod/InputMethodManager;

.field private final h:Landroid/text/Layout;

.field private i:Lio/flutter/plugin/editing/a;

.field private final j:Z

.field private k:Z

.field private l:Lio/flutter/plugin/editing/b$a;


# direct methods
.method public constructor <init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;)V
    .locals 7

    .line 13
    new-instance v6, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v6}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/flutter/plugin/editing/b;-><init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;Lio/flutter/embedding/engine/FlutterJNI;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 8

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/flutter/plugin/editing/b;->k:Z

    .line 3
    iput-object p1, p0, Lio/flutter/plugin/editing/b;->a:Landroid/view/View;

    .line 4
    iput p2, p0, Lio/flutter/plugin/editing/b;->b:I

    .line 5
    iput-object p3, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 6
    iput-object p4, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    .line 7
    iput-object p5, p0, Lio/flutter/plugin/editing/b;->e:Landroid/view/inputmethod/EditorInfo;

    .line 8
    iput v0, p0, Lio/flutter/plugin/editing/b;->f:I

    .line 9
    new-instance p2, Lio/flutter/plugin/editing/a;

    invoke-direct {p2, p6}, Lio/flutter/plugin/editing/a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p2, p0, Lio/flutter/plugin/editing/b;->i:Lio/flutter/plugin/editing/a;

    .line 10
    new-instance p2, Landroid/text/DynamicLayout;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v3, 0x7fffffff

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p4

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p2, p0, Lio/flutter/plugin/editing/b;->h:Landroid/text/Layout;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lio/flutter/plugin/editing/b;->g:Landroid/view/inputmethod/InputMethodManager;

    .line 12
    invoke-direct {p0}, Lio/flutter/plugin/editing/b;->b()Z

    move-result p1

    iput-boolean p1, p0, Lio/flutter/plugin/editing/b;->j:Z

    return-void
.end method

.method private static a(ILandroid/text/Editable;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eq p1, p0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Text selection index was clamped ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") to remain in bounds. This may not be your fault, as some keyboards may select outside of bounds."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "flutter"

    invoke-static {v0, p0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method private b()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->g:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->a:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    .line 6
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Samsung"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()V
    .locals 15

    .line 1
    iget v0, p0, Lio/flutter/plugin/editing/b;->f:I

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lio/flutter/plugin/editing/b$a;

    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-direct {v0, p0, v1}, Lio/flutter/plugin/editing/b$a;-><init>(Lio/flutter/plugin/editing/b;Landroid/text/Editable;)V

    .line 3
    iget-boolean v1, p0, Lio/flutter/plugin/editing/b;->k:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/b;->l:Lio/flutter/plugin/editing/b$a;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/editing/b$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v2, p0, Lio/flutter/plugin/editing/b;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lio/flutter/plugin/editing/b;->a:Landroid/view/View;

    iget v4, v0, Lio/flutter/plugin/editing/b$a;->a:I

    iget v5, v0, Lio/flutter/plugin/editing/b$a;->b:I

    iget v6, v0, Lio/flutter/plugin/editing/b$a;->c:I

    iget v7, v0, Lio/flutter/plugin/editing/b$a;->d:I

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 5
    iget-object v8, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v9, p0, Lio/flutter/plugin/editing/b;->b:I

    iget-object v10, v0, Lio/flutter/plugin/editing/b$a;->e:Ljava/lang/String;

    iget v11, v0, Lio/flutter/plugin/editing/b$a;->a:I

    iget v12, v0, Lio/flutter/plugin/editing/b$a;->b:I

    iget v13, v0, Lio/flutter/plugin/editing/b$a;->c:I

    iget v14, v0, Lio/flutter/plugin/editing/b$a;->d:I

    invoke-virtual/range {v8 .. v14}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->updateEditingState(ILjava/lang/String;IIII)V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lio/flutter/plugin/editing/b;->k:Z

    .line 7
    iput-object v0, p0, Lio/flutter/plugin/editing/b;->l:Lio/flutter/plugin/editing/b$a;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .line 1
    iget v0, p0, Lio/flutter/plugin/editing/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/flutter/plugin/editing/b;->f:I

    .line 2
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/flutter/plugin/editing/b;->k:Z

    return-void
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->clearMetaKeyStates(I)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    return p1
.end method

.method public endBatchEdit()Z
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move-result v0

    .line 2
    iget v1, p0, Lio/flutter/plugin/editing/b;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/flutter/plugin/editing/b;->f:I

    .line 3
    invoke-direct {p0}, Lio/flutter/plugin/editing/b;->d()V

    return v0
.end method

.method public finishComposingText()Z
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lio/flutter/plugin/editing/b;->j:Z

    if-eqz v1, :cond_0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 4
    new-instance v1, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    const/4 v2, -0x1

    const-string v3, ""

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 6
    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lio/flutter/plugin/editing/b;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lio/flutter/plugin/editing/b;->a:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 0

    .line 1
    new-instance p1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {p1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 2
    iget-object p2, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p2

    iput p2, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 3
    iget-object p2, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p2

    iput p2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 4
    iget-object p2, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x102001f

    if-ne p1, v2, :cond_0

    .line 2
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    return v0

    :cond_0
    const v2, 0x1020020

    const-string v3, "text label?"

    const-string v4, "clipboard"

    if-ne p1, v2, :cond_2

    .line 3
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 4
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 5
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-interface {v1, v2, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 8
    iget-object v5, p0, Lio/flutter/plugin/editing/b;->a:Landroid/view/View;

    .line 9
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 10
    invoke-static {v3, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 11
    invoke-virtual {v4, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 12
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-interface {v1, v2, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 13
    invoke-virtual {p0, v2, v2}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    :cond_1
    return v0

    :cond_2
    const v2, 0x1020021

    if-ne p1, v2, :cond_4

    .line 14
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 15
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq p1, v1, :cond_3

    .line 16
    iget-object v2, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    .line 17
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {v2, v5, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 18
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->a:Landroid/view/View;

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 20
    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_3
    return v0

    :cond_4
    const v2, 0x1020022

    if-ne p1, v2, :cond_7

    .line 21
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->a:Landroid/view/View;

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 23
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 24
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    iget-object v2, p0, Lio/flutter/plugin/editing/b;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 25
    iget-object v2, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 26
    iget-object v3, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 27
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 28
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eq v3, v1, :cond_5

    .line 29
    iget-object v2, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 30
    :cond_5
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-interface {v1, v3, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v3, p1

    .line 32
    invoke-virtual {p0, v3, v3}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    :cond_6
    return v0

    :cond_7
    return v1
.end method

.method public performEditorAction(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    .line 2
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/b;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->done(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/b;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->previous(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/b;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->next(I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/b;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->send(I)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/b;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->search(I)V

    goto :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/b;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->go(I)V

    goto :goto_0

    .line 8
    :cond_5
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/b;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->newline(I)V

    goto :goto_0

    .line 9
    :cond_6
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/b;->b:I

    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->unspecifiedAction(I)V

    :goto_0
    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->c:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget v1, p0, Lio/flutter/plugin/editing/b;->b:I

    invoke-virtual {v0, v1, p1, p2}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->performPrivateCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x43

    if-ne v0, v3, :cond_2

    .line 4
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p1, v0}, Lio/flutter/plugin/editing/b;->a(ILandroid/text/Editable;)I

    move-result p1

    .line 5
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v3, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v0, v3}, Lio/flutter/plugin/editing/b;->a(ILandroid/text/Editable;)I

    move-result v0

    if-ne p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 6
    iget-object v3, p0, Lio/flutter/plugin/editing/b;->i:Lio/flutter/plugin/editing/a;

    iget-object v4, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-virtual {v3, v4, p1}, Lio/flutter/plugin/editing/a;->b(Ljava/lang/CharSequence;I)I

    move-result p1

    :cond_0
    if-le v0, p1, :cond_1

    .line 7
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 8
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 9
    invoke-direct {p0}, Lio/flutter/plugin/editing/b;->d()V

    return v2

    :cond_1
    return v1

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x15

    if-ne v0, v3, :cond_4

    .line 11
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 12
    iget-object v3, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->i:Lio/flutter/plugin/editing/a;

    iget-object v3, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-virtual {p1, v3, v0}, Lio/flutter/plugin/editing/a;->b(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 15
    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->i:Lio/flutter/plugin/editing/a;

    iget-object v4, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-virtual {p1, v4, v3}, Lio/flutter/plugin/editing/a;->b(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 17
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    :goto_0
    return v2

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_6

    .line 19
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 20
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 21
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-nez p1, :cond_5

    .line 22
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->i:Lio/flutter/plugin/editing/a;

    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    .line 23
    invoke-virtual {p1, v1, v0}, Lio/flutter/plugin/editing/a;->a(Ljava/lang/CharSequence;I)I

    move-result p1

    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 24
    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    goto :goto_1

    .line 25
    :cond_5
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->i:Lio/flutter/plugin/editing/a;

    iget-object v3, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    .line 26
    invoke-virtual {p1, v3, v1}, Lio/flutter/plugin/editing/a;->a(Ljava/lang/CharSequence;I)I

    move-result p1

    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 27
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    :goto_1
    return v2

    .line 28
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    if-ne v0, v3, :cond_8

    .line 29
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 30
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-nez p1, :cond_7

    .line 32
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    iget-object v0, p0, Lio/flutter/plugin/editing/b;->h:Landroid/text/Layout;

    invoke-static {p1, v0}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 33
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 34
    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    goto :goto_2

    .line 35
    :cond_7
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    iget-object v0, p0, Lio/flutter/plugin/editing/b;->h:Landroid/text/Layout;

    invoke-static {p1, v0}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 36
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 37
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 38
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    :goto_2
    return v2

    .line 39
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_a

    .line 40
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 41
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 42
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-nez p1, :cond_9

    .line 43
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    iget-object v0, p0, Lio/flutter/plugin/editing/b;->h:Landroid/text/Layout;

    invoke-static {p1, v0}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 44
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 45
    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    goto :goto_3

    .line 46
    :cond_9
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    iget-object v0, p0, Lio/flutter/plugin/editing/b;->h:Landroid/text/Layout;

    invoke-static {p1, v0}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    .line 47
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 48
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 49
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    :goto_3
    return v2

    .line 50
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x42

    if-eq v0, v3, :cond_b

    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_c

    :cond_b
    const/high16 v0, 0x20000

    iget-object v3, p0, Lio/flutter/plugin/editing/b;->e:Landroid/view/inputmethod/EditorInfo;

    iget v4, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v4

    if-nez v0, :cond_c

    .line 52
    iget p1, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/b;->performEditorAction(I)Z

    return v2

    .line 53
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    if-nez p1, :cond_d

    return v1

    .line 54
    :cond_d
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 55
    iget-object v3, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq v3, v0, :cond_e

    .line 58
    iget-object v1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-interface {v1, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 59
    :cond_e
    iget-object v0, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/2addr v3, v2

    .line 60
    invoke-virtual {p0, v3, v3}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    return v2

    .line 61
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_10

    .line 63
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_11

    .line 64
    :cond_10
    iget-object p1, p0, Lio/flutter/plugin/editing/b;->d:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    .line 65
    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/b;->setSelection(II)Z

    return v2

    :cond_11
    return v1
.end method

.method public setComposingRegion(II)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    return p1
.end method

.method public setSelection(II)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result p1

    .line 2
    invoke-virtual {p0}, Lio/flutter/plugin/editing/b;->c()V

    .line 3
    invoke-direct {p0}, Lio/flutter/plugin/editing/b;->d()V

    return p1
.end method
