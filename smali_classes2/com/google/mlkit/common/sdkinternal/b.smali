.class final enum Lcom/google/mlkit/common/sdkinternal/b;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@18.5.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum zza:Lcom/google/mlkit/common/sdkinternal/b;

.field private static final synthetic zzb:[Lcom/google/mlkit/common/sdkinternal/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/b;->zza:Lcom/google/mlkit/common/sdkinternal/b;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/mlkit/common/sdkinternal/b;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/mlkit/common/sdkinternal/b;->zzb:[Lcom/google/mlkit/common/sdkinternal/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    const-string p1, "INSTANCE"

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/mlkit/common/sdkinternal/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/b;->zzb:[Lcom/google/mlkit/common/sdkinternal/b;

    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/b;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->a(Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
