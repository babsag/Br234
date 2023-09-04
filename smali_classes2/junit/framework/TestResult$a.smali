.class Ljunit/framework/TestResult$a;
.super Ljava/lang/Object;
.source "TestResult.java"

# interfaces
.implements Ljunit/framework/Protectable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/framework/TestResult;->run(Ljunit/framework/TestCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljunit/framework/TestCase;

.field final synthetic b:Ljunit/framework/TestResult;


# direct methods
.method constructor <init>(Ljunit/framework/TestResult;Ljunit/framework/TestCase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ljunit/framework/TestResult$a;->b:Ljunit/framework/TestResult;

    iput-object p2, p0, Ljunit/framework/TestResult$a;->a:Ljunit/framework/TestCase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public protect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljunit/framework/TestResult$a;->a:Ljunit/framework/TestCase;

    invoke-virtual {v0}, Ljunit/framework/TestCase;->runBare()V

    return-void
.end method
