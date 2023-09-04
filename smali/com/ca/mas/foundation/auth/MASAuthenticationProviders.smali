.class public Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;
.super Ljava/lang/Object;
.source "MASAuthenticationProviders.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders$b;

    invoke-direct {v0}, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders$b;-><init>()V

    sput-object v0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->a:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ca/mas/core/service/AuthenticationProvider;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/ca/mas/core/service/AuthenticationProvider;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ca/mas/core/service/Provider;

    .line 6
    iget-object v2, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->a:Ljava/util/List;

    new-instance v3, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;

    invoke-direct {v3, v1}, Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;-><init>(Lcom/ca/mas/core/service/Provider;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/ca/mas/core/service/AuthenticationProvider;->getIdp()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->b:Ljava/lang/String;

    return-void
.end method

.method public static getAuthenticationProviders(Lcom/ca/mas/foundation/MASCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->getCurrentUser()Lcom/ca/mas/foundation/MASUser;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ca/mas/foundation/MASUser;->getCurrentUser()Lcom/ca/mas/foundation/MASUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ca/mas/foundation/MASUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/ca/mas/foundation/notify/Callback;->onSuccess(Lcom/ca/mas/foundation/MASCallback;Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders$a;

    invoke-static {}, Lcom/ca/mas/foundation/MAS;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders$a;-><init>(Landroid/content/Context;Lcom/ca/mas/foundation/MASCallback;)V

    .line 4
    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader;->startLoading()V

    :goto_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIdp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/auth/MASAuthenticationProvider;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->a:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2
    iget-object p2, p0, Lcom/ca/mas/foundation/auth/MASAuthenticationProviders;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
