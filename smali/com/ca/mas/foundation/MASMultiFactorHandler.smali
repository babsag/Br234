.class public Lcom/ca/mas/foundation/MASMultiFactorHandler;
.super Ljava/lang/Object;
.source "MASMultiFactorHandler.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ca/mas/foundation/MASMultiFactorHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASMultiFactorHandler$a;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASMultiFactorHandler$a;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->a:J

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->a:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->b:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->b:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->b:Ljava/util/Map;

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->a:J

    invoke-static {v0, v1}, Lcom/ca/mas/foundation/MAS;->cancelRequest(J)V

    return-void
.end method

.method public cancel(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->a:J

    invoke-static {v0, v1, p1}, Lcom/ca/mas/foundation/MAS;->cancelRequest(JLandroid/os/Bundle;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public proceed(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ca/mas/core/service/MssoService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.ca.mas.core.service.action.PROCESS_REQUEST"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-wide v1, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->a:J

    const-string v3, "com.ca.mas.core.service.req.extra.requestId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->b:Ljava/util/Map;

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->b:Ljava/util/Map;

    check-cast p2, Ljava/io/Serializable;

    const-string v1, "com.ca.mas.core.service.req.extra.additional.headers"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ca/mas/core/service/MssoServiceState;->isBound()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ca/mas/core/service/MssoServiceState;->getMssoService()Lcom/ca/mas/core/service/MssoService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ca/mas/core/service/MssoService;->handleWork(Landroid/content/Intent;)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance p2, Lcom/ca/mas/core/service/MssoServiceConnection;

    invoke-direct {p2, v0}, Lcom/ca/mas/core/service/MssoServiceConnection;-><init>(Landroid/content/Intent;)V

    .line 11
    invoke-static {}, Lcom/ca/mas/core/service/MssoServiceState;->getInstance()Lcom/ca/mas/core/service/MssoServiceState;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ca/mas/core/service/MssoServiceState;->setServiceConnection(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->b:Ljava/util/Map;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/ca/mas/foundation/MASMultiFactorHandler;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
