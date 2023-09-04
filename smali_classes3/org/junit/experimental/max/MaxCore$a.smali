.class Lorg/junit/experimental/max/MaxCore$a;
.super Lorg/junit/runner/Request;
.source "MaxCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/max/MaxCore;->b(Ljava/util/List;)Lorg/junit/runner/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lorg/junit/experimental/max/MaxCore;


# direct methods
.method constructor <init>(Lorg/junit/experimental/max/MaxCore;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/experimental/max/MaxCore$a;->b:Lorg/junit/experimental/max/MaxCore;

    iput-object p2, p0, Lorg/junit/experimental/max/MaxCore$a;->a:Ljava/util/List;

    invoke-direct {p0}, Lorg/junit/runner/Request;-><init>()V

    return-void
.end method


# virtual methods
.method public getRunner()Lorg/junit/runner/Runner;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lorg/junit/experimental/max/MaxCore$a$a;

    iget-object v2, p0, Lorg/junit/experimental/max/MaxCore$a;->a:Ljava/util/List;

    invoke-direct {v1, p0, v0, v2}, Lorg/junit/experimental/max/MaxCore$a$a;-><init>(Lorg/junit/experimental/max/MaxCore$a;Ljava/lang/Class;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/junit/runners/model/InitializationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 2
    new-instance v2, Lorg/junit/internal/runners/ErrorReportingRunner;

    invoke-direct {v2, v0, v1}, Lorg/junit/internal/runners/ErrorReportingRunner;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v2
.end method
