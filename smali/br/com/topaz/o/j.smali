.class public Lbr/com/topaz/o/j;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/o/j$b;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/Thread;


# instance fields
.field private b:Lbr/com/topaz/o/j$b;

.field private c:Lbr/com/topaz/l/f0;

.field private d:Lbr/com/topaz/heartbeat/utils/OFDException;

.field private e:Lbr/com/topaz/o/b;

.field private f:Lbr/com/topaz/o/f;

.field private final g:I


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/l/f0;Lbr/com/topaz/heartbeat/utils/OFDException;Lbr/com/topaz/o/b;Lbr/com/topaz/o/f;I)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/o/j;->c:Lbr/com/topaz/l/f0;

    iput-object p3, p0, Lbr/com/topaz/o/j;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    iput-object p4, p0, Lbr/com/topaz/o/j;->e:Lbr/com/topaz/o/b;

    iput-object p5, p0, Lbr/com/topaz/o/j;->f:Lbr/com/topaz/o/f;

    iput p6, p0, Lbr/com/topaz/o/j;->g:I

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/o/h;",
            ">;)",
            "Ljava/util/List<",
            "Lbr/com/topaz/o/h;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/topaz/o/h;

    invoke-virtual {v2}, Lbr/com/topaz/o/h;->c()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lbr/com/topaz/o/h;->c()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    iget v3, p0, Lbr/com/topaz/o/j;->g:I

    sget v4, Lbr/com/topaz/o/i;->c:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lbr/com/topaz/o/h;->a()I

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    iget v3, p0, Lbr/com/topaz/o/j;->g:I

    sget v4, Lbr/com/topaz/o/i;->b:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lbr/com/topaz/o/h;->a()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {}, Lbr/com/topaz/s/b;->b()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v5, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return-object p1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/o/j;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "180"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lbr/com/topaz/o/j;)V
    .locals 0

    invoke-direct {p0}, Lbr/com/topaz/o/j;->c()V

    return-void
.end method

.method private c()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/o/j;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v0}, Lbr/com/topaz/l/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbr/com/topaz/o/j;->e:Lbr/com/topaz/o/b;

    invoke-virtual {v0}, Lbr/com/topaz/o/b;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/o/j;->c:Lbr/com/topaz/l/f0;

    invoke-interface {v1}, Lbr/com/topaz/l/f0;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbr/com/topaz/o/c;

    invoke-virtual {v2}, Lbr/com/topaz/o/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lbr/com/topaz/o/c;->e()I

    move-result v4

    int-to-long v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lbr/com/topaz/o/j;->e:Lbr/com/topaz/o/b;

    invoke-virtual {v8, v3}, Lbr/com/topaz/o/b;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lbr/com/topaz/o/j;->e:Lbr/com/topaz/o/b;

    invoke-virtual {v8, v3}, Lbr/com/topaz/o/b;->a(Ljava/lang/String;)Lbr/com/topaz/o/h;

    move-result-object v8

    invoke-virtual {v8}, Lbr/com/topaz/o/h;->d()J

    move-result-wide v8

    add-long/2addr v4, v8

    :cond_1
    iget v8, p0, Lbr/com/topaz/o/j;->g:I

    sget v9, Lbr/com/topaz/o/i;->b:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v2}, Lbr/com/topaz/o/c;->e()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_4

    if-eqz v8, :cond_5

    invoke-static {}, Lbr/com/topaz/s/b;->b()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    const/4 v10, 0x1

    :cond_5
    cmp-long v8, v6, v4

    if-lez v8, :cond_6

    if-eqz v10, :cond_6

    iget-object v3, p0, Lbr/com/topaz/o/j;->f:Lbr/com/topaz/o/f;

    invoke-virtual {v3, v2}, Lbr/com/topaz/o/f;->a(Lbr/com/topaz/o/c;)Lbr/com/topaz/o/h;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lbr/com/topaz/o/j;->e:Lbr/com/topaz/o/b;

    invoke-virtual {v2, v3}, Lbr/com/topaz/o/b;->a(Ljava/lang/String;)Lbr/com/topaz/o/h;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lbr/com/topaz/o/h;->a(I)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lbr/com/topaz/o/j;->e:Lbr/com/topaz/o/b;

    invoke-virtual {v1, v0}, Lbr/com/topaz/o/b;->a(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lbr/com/topaz/o/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lbr/com/topaz/o/j;->b:Lbr/com/topaz/o/j$b;

    invoke-interface {v1, v0}, Lbr/com/topaz/o/j$b;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/o/j;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "177"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Lbr/com/topaz/o/j$b;)V
    .locals 0

    iput-object p1, p0, Lbr/com/topaz/o/j;->b:Lbr/com/topaz/o/j$b;

    return-void
.end method

.method public run()V
    .locals 3

    :try_start_0
    sget-object v0, Lbr/com/topaz/o/j;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbr/com/topaz/o/j$a;

    invoke-direct {v1, p0}, Lbr/com/topaz/o/j$a;-><init>(Lbr/com/topaz/o/j;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lbr/com/topaz/o/j;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lbr/com/topaz/o/j;->d:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v2, "177"

    invoke-virtual {v1, v0, v2}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
