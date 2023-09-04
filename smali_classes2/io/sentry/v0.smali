.class final Lio/sentry/v0;
.super Ljava/util/AbstractCollection;
.source "CircularFifoQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private transient a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transient b:I

.field private transient c:I

.field private transient d:Z

.field private final e:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/sentry/v0;->b:I

    .line 3
    iput v0, p0, Lio/sentry/v0;->c:I

    .line 4
    iput-boolean v0, p0, Lio/sentry/v0;->d:Z

    if-lez p1, :cond_0

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lio/sentry/v0;->a:[Ljava/lang/Object;

    .line 6
    array-length p1, p1

    iput p1, p0, Lio/sentry/v0;->e:I

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lio/sentry/v0;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/v0;->b:I

    return p0
.end method

.method static synthetic b(Lio/sentry/v0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/sentry/v0;->d:Z

    return p0
.end method

.method static synthetic c(Lio/sentry/v0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/sentry/v0;->d:Z

    return p1
.end method

.method static synthetic d(Lio/sentry/v0;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/v0;->c:I

    return p0
.end method

.method static synthetic e(Lio/sentry/v0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/sentry/v0;->c:I

    return p1
.end method

.method static synthetic f(Lio/sentry/v0;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/v0;->k(I)I

    move-result p0

    return p0
.end method

.method static synthetic g(Lio/sentry/v0;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/v0;->a:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lio/sentry/v0;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/sentry/v0;->e:I

    return p0
.end method

.method static synthetic i(Lio/sentry/v0;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/v0;->j(I)I

    move-result p0

    return p0
.end method

.method private j(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    .line 1
    iget p1, p0, Lio/sentry/v0;->e:I

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private k(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    iget v0, p0, Lio/sentry/v0;->e:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "Attempted to add null object to queue"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/sentry/v0;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/sentry/v0;->remove()Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/sentry/v0;->a:[Ljava/lang/Object;

    iget v1, p0, Lio/sentry/v0;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/sentry/v0;->c:I

    aput-object p1, v0, v1

    .line 5
    iget p1, p0, Lio/sentry/v0;->e:I

    if-lt v2, p1, :cond_1

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lio/sentry/v0;->c:I

    .line 7
    :cond_1
    iget p1, p0, Lio/sentry/v0;->c:I

    iget v0, p0, Lio/sentry/v0;->b:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 8
    iput-boolean v1, p0, Lio/sentry/v0;->d:Z

    :cond_2
    return v1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/sentry/v0;->d:Z

    .line 2
    iput v0, p0, Lio/sentry/v0;->b:I

    .line 3
    iput v0, p0, Lio/sentry/v0;->c:I

    .line 4
    iget-object v0, p0, Lio/sentry/v0;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/v0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/sentry/v0;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/v0;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/sentry/v0$a;

    invoke-direct {v0, p0}, Lio/sentry/v0$a;-><init>(Lio/sentry/v0;)V

    return-object v0
.end method

.method public l()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/v0;->size()I

    move-result v0

    iget v1, p0, Lio/sentry/v0;->e:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/v0;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/v0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/v0;->a:[Ljava/lang/Object;

    iget v1, p0, Lio/sentry/v0;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/v0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/sentry/v0;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/v0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/sentry/v0;->a:[Ljava/lang/Object;

    iget v1, p0, Lio/sentry/v0;->b:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 3
    iput v3, p0, Lio/sentry/v0;->b:I

    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 4
    iget v0, p0, Lio/sentry/v0;->e:I

    const/4 v1, 0x0

    if-lt v3, v0, :cond_0

    .line 5
    iput v1, p0, Lio/sentry/v0;->b:I

    .line 6
    :cond_0
    iput-boolean v1, p0, Lio/sentry/v0;->d:Z

    :cond_1
    return-object v2

    .line 7
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 3

    .line 1
    iget v0, p0, Lio/sentry/v0;->c:I

    iget v1, p0, Lio/sentry/v0;->b:I

    if-ge v0, v1, :cond_0

    .line 2
    iget v2, p0, Lio/sentry/v0;->e:I

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 3
    iget-boolean v0, p0, Lio/sentry/v0;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/sentry/v0;->e:I

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    sub-int v2, v0, v1

    :goto_0
    return v2
.end method
