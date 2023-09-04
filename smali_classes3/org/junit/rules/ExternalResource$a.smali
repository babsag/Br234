.class Lorg/junit/rules/ExternalResource$a;
.super Lorg/junit/runners/model/Statement;
.source "ExternalResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/rules/ExternalResource;->a(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/junit/runners/model/Statement;

.field final synthetic b:Lorg/junit/rules/ExternalResource;


# direct methods
.method constructor <init>(Lorg/junit/rules/ExternalResource;Lorg/junit/runners/model/Statement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/junit/rules/ExternalResource$a;->b:Lorg/junit/rules/ExternalResource;

    iput-object p2, p0, Lorg/junit/rules/ExternalResource$a;->a:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

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
    iget-object v0, p0, Lorg/junit/rules/ExternalResource$a;->b:Lorg/junit/rules/ExternalResource;

    invoke-virtual {v0}, Lorg/junit/rules/ExternalResource;->before()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/junit/rules/ExternalResource$a;->a:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lorg/junit/rules/ExternalResource$a;->b:Lorg/junit/rules/ExternalResource;

    invoke-virtual {v0}, Lorg/junit/rules/ExternalResource;->after()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/junit/rules/ExternalResource$a;->b:Lorg/junit/rules/ExternalResource;

    invoke-virtual {v1}, Lorg/junit/rules/ExternalResource;->after()V

    throw v0
.end method
