.class final Lcom/google/mlkit/common/sdkinternal/c;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.5.0"


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Ljava/lang/Runnable;


# direct methods
.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lcom/google/mlkit/common/sdkinternal/zzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/c;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/c;->b:Ljava/lang/Runnable;

    return-void
.end method
