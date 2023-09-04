.class public Lbr/com/topaz/a0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/a0/a;


# instance fields
.field private a:Lbr/com/topaz/w0/b;

.field private b:Lbr/com/topaz/n/a;

.field private c:Lbr/com/topaz/m/e;

.field private d:Lbr/com/topaz/m/f;

.field private e:Lbr/com/topaz/m/b;


# direct methods
.method public constructor <init>(Lbr/com/topaz/w0/b;Lbr/com/topaz/n/a;Lbr/com/topaz/m/e;Lbr/com/topaz/m/f;Lbr/com/topaz/m/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/a0/b;->a:Lbr/com/topaz/w0/b;

    iput-object p2, p0, Lbr/com/topaz/a0/b;->b:Lbr/com/topaz/n/a;

    iput-object p3, p0, Lbr/com/topaz/a0/b;->c:Lbr/com/topaz/m/e;

    iput-object p4, p0, Lbr/com/topaz/a0/b;->d:Lbr/com/topaz/m/f;

    iput-object p5, p0, Lbr/com/topaz/a0/b;->e:Lbr/com/topaz/m/b;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/a0/b;->a:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/com/topaz/a0/b;->a:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/a0/b;->b:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/a0/b;->b:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/a0/b;->b:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/a0/b;->b:Lbr/com/topaz/n/a;

    invoke-interface {v0}, Lbr/com/topaz/n/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/a0/b;->b:Lbr/com/topaz/n/a;

    invoke-interface {v1}, Lbr/com/topaz/n/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/com/topaz/a0/b;->b:Lbr/com/topaz/n/a;

    invoke-interface {v2}, Lbr/com/topaz/n/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/com/topaz/a0/b;->b:Lbr/com/topaz/n/a;

    invoke-interface {v2}, Lbr/com/topaz/n/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/com/topaz/a0/b;->b:Lbr/com/topaz/n/a;

    invoke-interface {v1}, Lbr/com/topaz/n/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const-string p1, "4.6.0.1074349"

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lbr/com/topaz/a0/b;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lbr/com/topaz/a0/b;->c:Lbr/com/topaz/m/e;

    invoke-virtual {p1}, Lbr/com/topaz/m/e;->u()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lbr/com/topaz/a0/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lbr/com/topaz/a0/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1f41
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/a0/b;->d:Lbr/com/topaz/m/f;

    invoke-virtual {v0}, Lbr/com/topaz/m/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lbr/com/topaz/a0/b;->e:Lbr/com/topaz/m/b;

    invoke-virtual {v1}, Lbr/com/topaz/m/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/a0/b;->c:Lbr/com/topaz/m/e;

    invoke-virtual {v0}, Lbr/com/topaz/m/e;->s()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "true"

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/a0/b;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
