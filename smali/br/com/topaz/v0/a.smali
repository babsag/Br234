.class public Lbr/com/topaz/v0/a;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/v0/a$a;
    }
.end annotation


# instance fields
.field private b:Lbr/com/topaz/v0/a$a;

.field private c:Lbr/com/topaz/l/f0;

.field private d:Lbr/com/topaz/l/x;

.field private e:Lbr/com/topaz/y/e;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/l/x;Lbr/com/topaz/y/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/v0/a;->c:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/v0/a;->d:Lbr/com/topaz/l/x;

    iput-object p4, p0, Lbr/com/topaz/v0/a;->e:Lbr/com/topaz/y/e;

    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/v0/a$a;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/v0/a;->b:Lbr/com/topaz/v0/a$a;

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lbr/com/topaz/v0/a;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/topaz/l/z;

    invoke-virtual {v2}, Lbr/com/topaz/l/z;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbr/com/topaz/v0/a;->d:Lbr/com/topaz/l/x;

    invoke-virtual {v4}, Lbr/com/topaz/l/x;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lbr/com/topaz/v0/a;->e:Lbr/com/topaz/y/e;

    invoke-virtual {v2}, Lbr/com/topaz/l/z;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/v0/a;->d:Lbr/com/topaz/l/x;

    invoke-virtual {v1, v2, v3}, Lbr/com/topaz/y/e;->a(Ljava/util/List;Lbr/com/topaz/l/x;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbr/com/topaz/v0/a;->b:Lbr/com/topaz/v0/a$a;

    iget-object v2, p0, Lbr/com/topaz/v0/a;->d:Lbr/com/topaz/l/x;

    invoke-interface {v0, v1, v2}, Lbr/com/topaz/v0/a$a;->a(Ljava/util/List;Lbr/com/topaz/l/x;)V

    return-void
.end method
