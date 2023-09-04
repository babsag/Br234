.class public Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;
.super Ljava/lang/Object;
.source "SequentialProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tensorflow/lite/support/common/SequentialProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/support/common/Operator<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public add(Lorg/tensorflow/lite/support/common/Operator;)Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;
    .locals 2
    .param p1    # Lorg/tensorflow/lite/support/common/Operator;
        .annotation runtime Lorg/checkerframework/checker/nullness/qual/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/tensorflow/lite/support/common/Operator<",
            "TT;>;)",
            "Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Adding null Op is illegal."

    .line 1
    invoke-static {p1, v0}, Lorg/tensorflow/lite/support/common/SupportPreconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/tensorflow/lite/support/common/SequentialProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/tensorflow/lite/support/common/SequentialProcessor<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/tensorflow/lite/support/common/SequentialProcessor;

    invoke-direct {v0, p0}, Lorg/tensorflow/lite/support/common/SequentialProcessor;-><init>(Lorg/tensorflow/lite/support/common/SequentialProcessor$Builder;)V

    return-object v0
.end method
