.class Lorg/junit/experimental/theories/Theories$TheoryAnchor$a$a;
.super Lorg/junit/runners/model/Statement;
.source "Theories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;->methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/junit/runners/model/Statement;

.field final synthetic b:Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;


# direct methods
.method constructor <init>(Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;Lorg/junit/runners/model/Statement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$a$a;->b:Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;

    iput-object p2, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$a$a;->a:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$a$a;->a:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 2
    iget-object v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$a$a;->b:Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;

    iget-object v0, v0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;->h:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-virtual {v0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->handleDataPointSuccess()V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$a$a;->b:Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;

    iget-object v2, v1, Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;->h:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    iget-object v1, v1, Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;->g:Lorg/junit/experimental/theories/internal/Assignments;

    invoke-static {v2}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->a(Lorg/junit/experimental/theories/Theories$TheoryAnchor;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/junit/experimental/theories/internal/Assignments;->getArgumentStrings(Z)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->reportParameterizedError(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$a$a;->b:Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;

    iget-object v1, v1, Lorg/junit/experimental/theories/Theories$TheoryAnchor$a;->h:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-virtual {v1, v0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->handleAssumptionViolation(Lorg/junit/internal/AssumptionViolatedException;)V

    :goto_0
    return-void
.end method
