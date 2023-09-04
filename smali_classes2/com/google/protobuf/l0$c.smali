.class final Lcom/google/protobuf/l0$c;
.super Ljava/lang/Object;
.source "RopeByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/protobuf/ByteString$h;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/protobuf/l0;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/protobuf/ByteString$h;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/ByteString;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    instance-of v0, p1, Lcom/google/protobuf/l0;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/google/protobuf/l0;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/google/protobuf/l0;->getTreeDepth()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/l0$c;->a:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, Lcom/google/protobuf/l0;->n(Lcom/google/protobuf/l0;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/l0$c;->a(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString$h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/l0$c;->b:Lcom/google/protobuf/ByteString$h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/protobuf/l0$c;->a:Ljava/util/ArrayDeque;

    .line 9
    check-cast p1, Lcom/google/protobuf/ByteString$h;

    iput-object p1, p0, Lcom/google/protobuf/l0$c;->b:Lcom/google/protobuf/ByteString$h;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/l0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/l0$c;-><init>(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private a(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString$h;
    .locals 1

    .line 1
    :goto_0
    instance-of v0, p1, Lcom/google/protobuf/l0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/protobuf/l0;

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/l0$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/l0;->n(Lcom/google/protobuf/l0;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString$h;

    return-object p1
.end method

.method private b()Lcom/google/protobuf/ByteString$h;
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/l0$c;->a:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/l0$c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/l0;

    invoke-static {v0}, Lcom/google/protobuf/l0;->o(Lcom/google/protobuf/l0;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/l0$c;->a(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString$h;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/protobuf/ByteString$h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/l0$c;->b:Lcom/google/protobuf/ByteString$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/l0$c;->b()Lcom/google/protobuf/ByteString$h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/l0$c;->b:Lcom/google/protobuf/ByteString$h;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/l0$c;->b:Lcom/google/protobuf/ByteString$h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/l0$c;->c()Lcom/google/protobuf/ByteString$h;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
