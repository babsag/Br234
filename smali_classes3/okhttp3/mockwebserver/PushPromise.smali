.class public final Lokhttp3/mockwebserver/PushPromise;
.super Ljava/lang/Object;
.source "PushPromise.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lokhttp3/Headers;

.field private final d:Lokhttp3/mockwebserver/MockResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/mockwebserver/MockResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/mockwebserver/PushPromise;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lokhttp3/mockwebserver/PushPromise;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lokhttp3/mockwebserver/PushPromise;->c:Lokhttp3/Headers;

    .line 5
    iput-object p4, p0, Lokhttp3/mockwebserver/PushPromise;->d:Lokhttp3/mockwebserver/MockResponse;

    return-void
.end method


# virtual methods
.method public headers()Lokhttp3/Headers;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->c:Lokhttp3/Headers;

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->a:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->b:Ljava/lang/String;

    return-object v0
.end method

.method public response()Lokhttp3/mockwebserver/MockResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/mockwebserver/PushPromise;->d:Lokhttp3/mockwebserver/MockResponse;

    return-object v0
.end method
