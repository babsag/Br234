.class Lorg/junit/rules/ErrorCollector$a;
.super Ljava/lang/Object;
.source "ErrorCollector.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/rules/ErrorCollector;->checkThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lorg/hamcrest/Matcher;

.field final synthetic d:Lorg/junit/rules/ErrorCollector;


# direct methods
.method constructor <init>(Lorg/junit/rules/ErrorCollector;Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/junit/rules/ErrorCollector$a;->d:Lorg/junit/rules/ErrorCollector;

    iput-object p2, p0, Lorg/junit/rules/ErrorCollector$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/junit/rules/ErrorCollector$a;->b:Ljava/lang/Object;

    iput-object p4, p0, Lorg/junit/rules/ErrorCollector$a;->c:Lorg/hamcrest/Matcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/junit/rules/ErrorCollector$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/junit/rules/ErrorCollector$a;->b:Ljava/lang/Object;

    iget-object v2, p0, Lorg/junit/rules/ErrorCollector$a;->c:Lorg/hamcrest/Matcher;

    invoke-static {v0, v1, v2}, Lorg/junit/Assert;->assertThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 2
    iget-object v0, p0, Lorg/junit/rules/ErrorCollector$a;->b:Ljava/lang/Object;

    return-object v0
.end method
