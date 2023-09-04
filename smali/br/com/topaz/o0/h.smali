.class public Lbr/com/topaz/o0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/widget/EditText;

.field private final d:Lbr/com/topaz/k0/a;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Lbr/com/topaz/k0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/o0/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lbr/com/topaz/o0/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lbr/com/topaz/o0/h;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lbr/com/topaz/o0/h;->d:Lbr/com/topaz/k0/a;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbr/com/topaz/o0/h;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lbr/com/topaz/o0/h;->e:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbr/com/topaz/o0/h;->e:Z

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    invoke-direct {p0, p1}, Lbr/com/topaz/o0/h;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lbr/com/topaz/o0/f;

    iget-object v1, p0, Lbr/com/topaz/o0/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lbr/com/topaz/o0/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lbr/com/topaz/o0/h;->c:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbr/com/topaz/o0/f;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;II)V

    iget-object p1, p0, Lbr/com/topaz/o0/h;->d:Lbr/com/topaz/k0/a;

    invoke-virtual {p1, p2}, Lbr/com/topaz/k0/a;->a(Lbr/com/topaz/k0/c;)V

    return-void
.end method
