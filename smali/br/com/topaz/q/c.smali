.class public Lbr/com/topaz/q/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/q/b;


# instance fields
.field private a:Lbr/com/topaz/l/f0;


# direct methods
.method public constructor <init>(Lbr/com/topaz/l/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/q/c;->a:Lbr/com/topaz/l/f0;

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/q/h;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/q/c;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->m()Lbr/com/topaz/q/f;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/q/f;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lbr/com/topaz/q/f;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lbr/com/topaz/q/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lbr/com/topaz/q/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lbr/com/topaz/q/f;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lbr/com/topaz/q/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/q/c;->a:Lbr/com/topaz/l/f0;

    invoke-interface {v0, p1}, Lbr/com/topaz/l/f0;->a(Lbr/com/topaz/q/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
