.class public Lbr/com/topaz/h/d;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lbr/com/topaz/l/g;

.field private d:Lbr/com/topaz/l/g;

.field private e:Lbr/com/topaz/g0/b;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/g;Lbr/com/topaz/l/g;Lbr/com/topaz/g0/b;Lbr/com/topaz/u0/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/h/d;->c:Lbr/com/topaz/l/g;

    iput-object p3, p0, Lbr/com/topaz/h/d;->d:Lbr/com/topaz/l/g;

    iput-object p4, p0, Lbr/com/topaz/h/d;->e:Lbr/com/topaz/g0/b;

    const/16 p1, 0x54

    invoke-interface {p5, p1}, Lbr/com/topaz/u0/r;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbr/com/topaz/h/d;->b:Ljava/lang/String;

    return-void
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/h/d;->d:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->g()Lbr/com/topaz/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/h/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/h/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private d()Z
    .locals 3

    iget-object v0, p0, Lbr/com/topaz/h/d;->d:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->g()Lbr/com/topaz/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/h/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/h/d;->d:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->g()Lbr/com/topaz/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/h/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/h/d;->c:Lbr/com/topaz/l/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->g()Lbr/com/topaz/h/a;

    move-result-object v0

    iget-object v2, p0, Lbr/com/topaz/h/d;->d:Lbr/com/topaz/l/g;

    invoke-virtual {v2}, Lbr/com/topaz/l/g;->g()Lbr/com/topaz/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lbr/com/topaz/h/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbr/com/topaz/h/a;->a(Ljava/util/List;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/h/d;->d:Lbr/com/topaz/l/g;

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->g()Lbr/com/topaz/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/h/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lbr/com/topaz/h/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbr/com/topaz/h/d;->e:Lbr/com/topaz/g0/b;

    sget-object v2, Lbr/com/topaz/g0/b$a;->b:Lbr/com/topaz/g0/b$a;

    iget-object v3, p0, Lbr/com/topaz/h/d;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/h/a$b;

    invoke-virtual {v0}, Lbr/com/topaz/h/a$b;->b()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lbr/com/topaz/g0/b;->a(Lbr/com/topaz/g0/b$a;Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/h/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/h/d;->e:Lbr/com/topaz/g0/b;

    iget-object v1, p0, Lbr/com/topaz/h/d;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbr/com/topaz/g0/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
