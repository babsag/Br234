.class final synthetic Lcom/google/firebase/heartbeatinfo/d;
.super Ljava/lang/Object;
.source "DefaultHeartBeatInfo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;


# direct methods
.method private constructor <init>(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/d;->a:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    return-void
.end method

.method public static a(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/heartbeatinfo/d;

    invoke-direct {v0, p0}, Lcom/google/firebase/heartbeatinfo/d;-><init>(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/d;->a:Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;

    invoke-static {v0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;->b(Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
