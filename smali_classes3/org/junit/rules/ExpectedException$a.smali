.class Lorg/junit/rules/ExpectedException$a;
.super Lorg/junit/runners/model/Statement;
.source "ExpectedException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/rules/ExpectedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Lorg/junit/runners/model/Statement;

.field final synthetic b:Lorg/junit/rules/ExpectedException;


# direct methods
.method public constructor <init>(Lorg/junit/rules/ExpectedException;Lorg/junit/runners/model/Statement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/rules/ExpectedException$a;->b:Lorg/junit/rules/ExpectedException;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/junit/rules/ExpectedException$a;->a:Lorg/junit/runners/model/Statement;

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/junit/rules/ExpectedException$a;->a:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lorg/junit/rules/ExpectedException$a;->b:Lorg/junit/rules/ExpectedException;

    invoke-static {v0}, Lorg/junit/rules/ExpectedException;->b(Lorg/junit/rules/ExpectedException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/junit/rules/ExpectedException$a;->b:Lorg/junit/rules/ExpectedException;

    invoke-static {v0}, Lorg/junit/rules/ExpectedException;->c(Lorg/junit/rules/ExpectedException;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lorg/junit/rules/ExpectedException$a;->b:Lorg/junit/rules/ExpectedException;

    invoke-static {v1, v0}, Lorg/junit/rules/ExpectedException;->a(Lorg/junit/rules/ExpectedException;Ljava/lang/Throwable;)V

    return-void
.end method
