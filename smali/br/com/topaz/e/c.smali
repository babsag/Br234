.class public Lbr/com/topaz/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbr/com/topaz/l/e0;

.field private b:Lbr/com/topaz/l/f0;

.field private c:Lbr/com/topaz/e/e;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/f0;Lbr/com/topaz/l/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/e/c;->b:Lbr/com/topaz/l/f0;

    new-instance p1, Lbr/com/topaz/e/e;

    invoke-direct {p1}, Lbr/com/topaz/e/e;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/e/c;->c:Lbr/com/topaz/e/e;

    iput-object p2, p0, Lbr/com/topaz/e/c;->a:Lbr/com/topaz/l/e0;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/e/c;->a:Lbr/com/topaz/l/e0;

    invoke-interface {v0}, Lbr/com/topaz/l/e0;->s()Lbr/com/topaz/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/e/a;->a()Lbr/com/topaz/e/b;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr/com/topaz/e/b;->a()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lbr/com/topaz/e/c;->a(I)V

    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/e/c;->a:Lbr/com/topaz/l/e0;

    invoke-interface {v0}, Lbr/com/topaz/l/e0;->s()Lbr/com/topaz/e/a;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/e/c;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/l/g;->c()Lbr/com/topaz/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/e/d;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/e/a;->a(II)V

    iget-object p1, p0, Lbr/com/topaz/e/c;->a:Lbr/com/topaz/l/e0;

    invoke-interface {p1, v0}, Lbr/com/topaz/l/e0;->a(Lbr/com/topaz/e/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b()V
    .locals 2

    invoke-direct {p0}, Lbr/com/topaz/e/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/e/c;->c:Lbr/com/topaz/e/e;

    invoke-direct {p0}, Lbr/com/topaz/e/c;->c()Lbr/com/topaz/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/e/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/e/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbr/com/topaz/e/c;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Lbr/com/topaz/e/c;->a()V

    :goto_0
    return-void
.end method

.method private c()Lbr/com/topaz/e/d;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/e/c;->b:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->c()Lbr/com/topaz/e/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lbr/com/topaz/e/d;

    invoke-direct {v0}, Lbr/com/topaz/e/d;-><init>()V

    return-object v0
.end method

.method private d()Z
    .locals 2

    invoke-direct {p0}, Lbr/com/topaz/e/c;->c()Lbr/com/topaz/e/d;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/e/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public e()V
    .locals 2

    invoke-direct {p0}, Lbr/com/topaz/e/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/e/c;->c:Lbr/com/topaz/e/e;

    invoke-direct {p0}, Lbr/com/topaz/e/c;->c()Lbr/com/topaz/e/d;

    move-result-object v1

    invoke-virtual {v1}, Lbr/com/topaz/e/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/e/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Lbr/com/topaz/e/c;->b()V

    :goto_0
    return-void
.end method
