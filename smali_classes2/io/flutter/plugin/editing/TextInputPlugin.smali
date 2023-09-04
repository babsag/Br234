.class public Lio/flutter/plugin/editing/TextInputPlugin;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/TextInputPlugin$c;,
        Lio/flutter/plugin/editing/TextInputPlugin$d;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Landroid/view/inputmethod/InputMethodManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/view/autofill/AutofillManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private e:Lio/flutter/plugin/editing/TextInputPlugin$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/text/Editable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Z

.field private j:Landroid/view/inputmethod/InputConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lio/flutter/plugin/platform/PlatformViewsController;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private l:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final m:Z

.field private n:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/platform/PlatformViewsController;)V
    .locals 4
    .param p2    # Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugin/platform/PlatformViewsController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$c;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$c$a;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/editing/TextInputPlugin$c;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$c$a;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    .line 3
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->b:Landroid/view/inputmethod/InputMethodManager;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    iput-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->c:Landroid/view/autofill/AutofillManager;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->c:Landroid/view/autofill/AutofillManager;

    :goto_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 9
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    or-int/2addr v2, v0

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 11
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    or-int/2addr v2, v0

    .line 12
    :cond_2
    new-instance v0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    .line 13
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-direct {v0, p1, v2, v1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->n:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    .line 14
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->install()V

    .line 15
    :cond_3
    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->d:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 16
    new-instance p1, Lio/flutter/plugin/editing/TextInputPlugin$a;

    invoke-direct {p1, p0}, Lio/flutter/plugin/editing/TextInputPlugin$a;-><init>(Lio/flutter/plugin/editing/TextInputPlugin;)V

    invoke-virtual {p2, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->setTextInputMethodHandler(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;)V

    .line 17
    invoke-virtual {p2}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->requestExistingInputState()V

    .line 18
    iput-object p3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->k:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 19
    invoke-virtual {p3, p0}, Lio/flutter/plugin/platform/PlatformViewsController;->attachTextInputPlugin(Lio/flutter/plugin/editing/TextInputPlugin;)V

    .line 20
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->m()Z

    move-result p1

    iput-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->m:Z

    return-void
.end method

.method static synthetic a(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lio/flutter/plugin/editing/TextInputPlugin;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->v(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lio/flutter/plugin/editing/TextInputPlugin;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->k(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->p()V

    return-void
.end method

.method static synthetic e(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->c:Landroid/view/autofill/AutofillManager;

    return-object p0
.end method

.method static synthetic f(Lio/flutter/plugin/editing/TextInputPlugin;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->s(I)V

    return-void
.end method

.method static synthetic g(Lio/flutter/plugin/editing/TextInputPlugin;DD[D)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/flutter/plugin/editing/TextInputPlugin;->r(DD[D)V

    return-void
.end method

.method static synthetic h(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->j()V

    return-void
.end method

.method private i(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V
    .locals 2

    .line 1
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->selectionStart:I

    .line 2
    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->selectionEnd:I

    if-ltz v0, :cond_0

    .line 3
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    .line 4
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    .line 5
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 6
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    invoke-static {v1, v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$c;->a:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$c$a;->PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$c;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$c$a;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/editing/TextInputPlugin$c;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$c$a;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    .line 3
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->unlockPlatformViewInputConnection()V

    .line 4
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->q()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->l:Landroid/graphics/Rect;

    return-void
.end method

.method private k(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->q()V

    .line 2
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private static l(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;ZZZLio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->DATETIME:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    .line 2
    :cond_0
    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->NUMBER:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_3

    const/4 p1, 0x2

    .line 3
    iget-boolean p2, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->isSigned:Z

    if-eqz p2, :cond_1

    const/16 p1, 0x1002

    .line 4
    :cond_1
    iget-boolean p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->isDecimal:Z

    if-eqz p0, :cond_2

    or-int/lit16 p1, p1, 0x2000

    :cond_2
    return p1

    .line 5
    :cond_3
    sget-object p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->PHONE:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    const/4 p0, 0x1

    .line 6
    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->MULTILINE:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_5

    const p0, 0x20001

    goto :goto_0

    .line 7
    :cond_5
    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->EMAIL_ADDRESS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_6

    const/16 p0, 0x21

    goto :goto_0

    .line 8
    :cond_6
    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->URL:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_7

    const/16 p0, 0x11

    goto :goto_0

    .line 9
    :cond_7
    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->VISIBLE_PASSWORD:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_8

    const/16 p0, 0x91

    goto :goto_0

    .line 10
    :cond_8
    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->NAME:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_9

    const/16 p0, 0x61

    goto :goto_0

    .line 11
    :cond_9
    sget-object v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->POSTAL_ADDRESS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne v0, v1, :cond_a

    const/16 p0, 0x71

    :cond_a
    :goto_0
    const/high16 v0, 0x80000

    if-eqz p1, :cond_b

    or-int/2addr p0, v0

    or-int/lit16 p0, p0, 0x80

    goto :goto_1

    :cond_b
    if-eqz p2, :cond_c

    const p1, 0x8000

    or-int/2addr p0, p1

    :cond_c
    if-nez p3, :cond_d

    or-int/2addr p0, v0

    .line 12
    :cond_d
    :goto_1
    sget-object p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;->CHARACTERS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    if-ne p4, p1, :cond_e

    or-int/lit16 p0, p0, 0x1000

    goto :goto_2

    .line 13
    :cond_e
    sget-object p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;->WORDS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    if-ne p4, p1, :cond_f

    or-int/lit16 p0, p0, 0x2000

    goto :goto_2

    .line 14
    :cond_f
    sget-object p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;->SENTENCES:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    if-ne p4, p1, :cond_10

    or-int/lit16 p0, p0, 0x4000

    :cond_10
    :goto_2
    return p0
.end method

.method private m()Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->b:Landroid/view/inputmethod/InputMethodManager;

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
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

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

.method private n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->g:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->c:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->f:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->c:Landroid/view/autofill/AutofillManager;

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p1}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private p()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->c:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->f:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->l:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    .line 5
    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 6
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->c:Landroid/view/autofill/AutofillManager;

    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->c:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->f:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private r(DD[D)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    const/4 v6, 0x4

    new-array v6, v6, [D

    const/4 v7, 0x3

    .line 1
    aget-wide v8, v5, v7

    const/16 v10, 0xf

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    cmpl-double v15, v8, v13

    if-nez v15, :cond_0

    const/4 v8, 0x7

    aget-wide v8, v5, v8

    cmpl-double v15, v8, v13

    if-nez v15, :cond_0

    aget-wide v8, v5, v10

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v17, v8, v15

    if-nez v17, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0xc

    .line 2
    aget-wide v15, v5, v9

    aget-wide v17, v5, v10

    div-double v15, v15, v17

    aput-wide v15, v6, v11

    aput-wide v15, v6, v12

    const/16 v9, 0xd

    .line 3
    aget-wide v15, v5, v9

    aget-wide v9, v5, v10

    div-double/2addr v15, v9

    aput-wide v15, v6, v7

    const/4 v9, 0x2

    aput-wide v15, v6, v9

    .line 4
    new-instance v10, Lio/flutter/plugin/editing/TextInputPlugin$b;

    invoke-direct {v10, v0, v8, v5, v6}, Lio/flutter/plugin/editing/TextInputPlugin$b;-><init>(Lio/flutter/plugin/editing/TextInputPlugin;Z[D[D)V

    .line 5
    invoke-interface {v10, v1, v2, v13, v14}, Lio/flutter/plugin/editing/TextInputPlugin$d;->a(DD)V

    .line 6
    invoke-interface {v10, v1, v2, v3, v4}, Lio/flutter/plugin/editing/TextInputPlugin$d;->a(DD)V

    .line 7
    invoke-interface {v10, v13, v14, v3, v4}, Lio/flutter/plugin/editing/TextInputPlugin$d;->a(DD)V

    .line 8
    iget-object v1, v0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    aget-wide v3, v6, v12

    .line 10
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v12, v5

    mul-double v3, v3, v12

    double-to-int v3, v3

    aget-wide v4, v6, v9

    .line 11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    mul-double v4, v4, v8

    double-to-int v4, v4

    aget-wide v8, v6, v11

    .line 12
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v10, v5

    mul-double v8, v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    aget-wide v7, v6, v7

    .line 13
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v9, v1

    mul-double v7, v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lio/flutter/plugin/editing/TextInputPlugin;->l:Landroid/graphics/Rect;

    return-void
.end method

.method private s(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$c;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$c$a;->PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    invoke-direct {v0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin$c;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$c$a;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    .line 3
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->i:Z

    return-void
.end method

.method private v(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->b:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private w(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->q()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->f:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 3
    iget-object v0, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->fields:[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 4
    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->g:Landroid/util/SparseArray;

    return-void

    .line 6
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->g:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 9
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_1
    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, v0, v1

    .line 11
    iget-object v3, v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->g:Landroid/util/SparseArray;

    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public autofill(Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->f:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 5
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    if-eqz v3, :cond_4

    .line 7
    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v5, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    .line 10
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v5, v4, v6, v7}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;-><init>(Ljava/lang/String;II)V

    .line 11
    iget-object v4, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    iget-object v6, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-virtual {p0, v4, v5}, Lio/flutter/plugin/editing/TextInputPlugin;->u(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    .line 13
    :cond_3
    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_5
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->d:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    iget v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$c;->b:I

    invoke-virtual {p1, v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->updateEditingStateWithTag(ILjava/util/HashMap;)V

    return-void
.end method

.method public clearPlatformViewClient(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    iget-object v1, v0, Lio/flutter/plugin/editing/TextInputPlugin$c;->a:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    sget-object v2, Lio/flutter/plugin/editing/TextInputPlugin$c$a;->PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    if-ne v1, v2, :cond_0

    iget v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$c;->b:I

    if-ne v0, p1, :cond_0

    .line 2
    new-instance p1, Lio/flutter/plugin/editing/TextInputPlugin$c;

    sget-object v0, Lio/flutter/plugin/editing/TextInputPlugin$c$a;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lio/flutter/plugin/editing/TextInputPlugin$c;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$c$a;I)V

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    .line 3
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->k(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 5
    iput-boolean v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->i:Z

    :cond_0
    return-void
.end method

.method public createInputConnection(Landroid/view/View;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    iget-object v1, v0, Lio/flutter/plugin/editing/TextInputPlugin$c;->a:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    sget-object v2, Lio/flutter/plugin/editing/TextInputPlugin$c$a;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->j:Landroid/view/inputmethod/InputConnection;

    return-object p1

    .line 3
    :cond_0
    sget-object v2, Lio/flutter/plugin/editing/TextInputPlugin$c$a;->PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    if-ne v1, v2, :cond_2

    .line 4
    iget-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->o:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->j:Landroid/view/inputmethod/InputConnection;

    return-object p1

    .line 6
    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->k:Lio/flutter/plugin/platform/PlatformViewsController;

    iget v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$c;->b:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/plugin/platform/PlatformViewsController;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->j:Landroid/view/inputmethod/InputConnection;

    return-object p1

    .line 9
    :cond_2
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->f:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v1, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputType:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

    iget-boolean v2, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->obscureText:Z

    iget-boolean v3, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autocorrect:Z

    iget-boolean v4, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableSuggestions:Z

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->textCapitalization:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    .line 10
    invoke-static {v1, v2, v3, v4, v0}, Lio/flutter/plugin/editing/TextInputPlugin;->l(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;ZZZLio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;)I

    move-result v0

    iput v0, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x2000000

    .line 11
    iput v1, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 12
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->f:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputAction:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 14
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->f:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->actionLabel:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 15
    iput-object v1, p2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 16
    iput v0, p2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 17
    :cond_5
    iget v1, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 18
    new-instance v0, Lio/flutter/plugin/editing/b;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    iget v3, v1, Lio/flutter/plugin/editing/TextInputPlugin$c;->b:I

    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->d:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v5, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/flutter/plugin/editing/b;-><init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;)V

    .line 19
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iput p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 20
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    iput p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 21
    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->j:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public destroy()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->k:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detachTextInputPlugin()V

    .line 2
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->d:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->setTextInputMethodHandler(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;)V

    .line 3
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->n:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->remove()V

    :cond_0
    return-void
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->b:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public getLastInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->j:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public lockPlatformViewInputConnection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$c;->a:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$c$a;->PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->o:Z

    :cond_0
    return-void
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 13

    .line 1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_3

    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->n()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->f:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object p2, p2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object p2, p2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewStructure;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 5
    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 6
    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->g:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 7
    iget-object v4, v4, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 8
    invoke-virtual {p1, v5}, Landroid/view/ViewStructure;->addChildCount(I)I

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v6

    .line 10
    invoke-virtual {v6, v0, v3}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    .line 11
    iget-object v7, v4, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget-object v7, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    invoke-static {v7}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    .line 12
    iget-object v4, v4, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hints:[Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/view/ViewStructure;->setAutofillHints([Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6, v5}, Landroid/view/ViewStructure;->setAutofillType(I)V

    .line 14
    invoke-virtual {v6, v1}, Landroid/view/ViewStructure;->setVisibility(I)V

    .line 15
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v4, v3, :cond_2

    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->l:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    .line 16
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 17
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->l:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 19
    invoke-virtual/range {v6 .. v12}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 20
    invoke-virtual/range {v6 .. v12}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public sendTextInputAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method t(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$c;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$c$a;->FRAMEWORK_CLIENT:Lio/flutter/plugin/editing/TextInputPlugin$c$a;

    invoke-direct {v0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin$c;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$c$a;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->e:Lio/flutter/plugin/editing/TextInputPlugin$c;

    .line 2
    invoke-direct {p0, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->w(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    .line 3
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->i:Z

    .line 5
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->unlockPlatformViewInputConnection()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->l:Landroid/graphics/Rect;

    return-void
.end method

.method u(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    iget-object v3, p2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/plugin/editing/TextInputPlugin;->o(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->i(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    .line 5
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->getLastInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    instance-of v0, p2, Lio/flutter/plugin/editing/b;

    if-eqz v0, :cond_1

    .line 7
    check-cast p2, Lio/flutter/plugin/editing/b;

    invoke-virtual {p2}, Lio/flutter/plugin/editing/b;->c()V

    .line 8
    :cond_1
    iget-boolean p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->m:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->i:Z

    if-nez p2, :cond_2

    .line 9
    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->a:Landroid/view/View;

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    .line 10
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    .line 11
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    .line 12
    invoke-static {p1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v6

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->h:Landroid/text/Editable;

    .line 13
    invoke-static {p1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v7

    .line 14
    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 16
    iput-boolean v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->i:Z

    :goto_0
    return-void
.end method

.method public unlockPlatformViewInputConnection()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->o:Z

    return-void
.end method
