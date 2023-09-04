.class public Lbr/com/topaz/l/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/l/f0;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lbr/com/topaz/k/d;

.field private c:Lbr/com/topaz/u0/e;

.field private d:Lbr/com/topaz/u0/r;

.field private e:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

.field private f:Lbr/com/topaz/w0/b;

.field private g:Lbr/com/topaz/l/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/k/d;Lbr/com/topaz/u0/e;Lbr/com/topaz/u0/r;Lbr/com/topaz/heartbeat/crypto/MidCrypt;Lbr/com/topaz/w0/b;Lbr/com/topaz/l/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/l/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/l/o;->b:Lbr/com/topaz/k/d;

    iput-object p3, p0, Lbr/com/topaz/l/o;->c:Lbr/com/topaz/u0/e;

    iput-object p4, p0, Lbr/com/topaz/l/o;->d:Lbr/com/topaz/u0/r;

    iput-object p5, p0, Lbr/com/topaz/l/o;->e:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    iput-object p6, p0, Lbr/com/topaz/l/o;->f:Lbr/com/topaz/w0/b;

    iput-object p7, p0, Lbr/com/topaz/l/o;->g:Lbr/com/topaz/l/m;

    return-void
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/j;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbr/com/topaz/l/o;->f:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/com/topaz/l/o;->f:Lbr/com/topaz/w0/b;

    invoke-interface {v1}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/o;->e:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v1, p1, v0}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "ofd_err_cache"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method private g(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/l/o;->b:Lbr/com/topaz/k/d;

    invoke-virtual {p0, p1}, Lbr/com/topaz/l/o;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lbr/com/topaz/k/d;->a([B)[B

    move-result-object p1

    return-object p1
.end method

.method private h(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "domainList"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v5, Lbr/com/topaz/l/i;

    invoke-direct {v5}, Lbr/com/topaz/l/i;-><init>()V

    invoke-virtual {v5, v4}, Lbr/com/topaz/l/i;->a(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lbr/com/topaz/l/o;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Lbr/com/topaz/l/i;->a(Ljava/util/List;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lbr/com/topaz/q/h;)V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lbr/com/topaz/l/o;->j()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lbr/com/topaz/l/o;->p()Lbr/com/topaz/l/g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lbr/com/topaz/l/o;->p()Lbr/com/topaz/l/g;

    move-result-object v3

    invoke-virtual {v3}, Lbr/com/topaz/l/g;->m()Lbr/com/topaz/q/f;

    move-result-object v3

    invoke-virtual {v3}, Lbr/com/topaz/q/f;->e()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lbr/com/topaz/l/o;->a:Landroid/content/Context;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lbr/com/topaz/l/j;

    invoke-direct {v2, p1}, Lbr/com/topaz/l/j;-><init>(Lbr/com/topaz/q/h;)V

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v3, -0x1

    if-le p1, v3, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbr/com/topaz/l/j;

    invoke-virtual {p1}, Lbr/com/topaz/l/j;->a()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lbr/com/topaz/l/j;->a(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0, v0}, Lbr/com/topaz/l/o;->c(Ljava/util/List;)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lbr/com/topaz/l/o;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/l/o;->c:Lbr/com/topaz/u0/e;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/u0/e;->a([B)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/l/o;->g:Lbr/com/topaz/l/m;

    invoke-virtual {v0, p1, p2}, Lbr/com/topaz/l/m;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "ofd_hb_event_list"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a([B)V
    .locals 1

    const-string v0, "ofd_nfl_list"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public a()Z
    .locals 1

    const-string v0, "ofd_dlr_list"

    invoke-virtual {p0, v0}, Lbr/com/topaz/l/o;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/i;",
            ">;"
        }
    .end annotation

    const-string v0, "ofd_hb_domain_list"

    invoke-direct {p0, v0}, Lbr/com/topaz/l/o;->g(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Lbr/com/topaz/l/o;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/j;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lbr/com/topaz/l/o;->j()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/o;->a:Landroid/content/Context;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/l/j;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    invoke-virtual {v0}, Lbr/com/topaz/l/j;->a()I

    move-result v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbr/com/topaz/l/j;

    invoke-virtual {v3}, Lbr/com/topaz/l/j;->a()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lbr/com/topaz/l/j;->a(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lbr/com/topaz/l/o;->c(Ljava/util/List;)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public b([B)V
    .locals 1

    const-string v0, "ofd_asms_blacklist_url"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public b(Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/l/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/l/o;->g:Lbr/com/topaz/l/m;

    invoke-virtual {v0, p1}, Lbr/com/topaz/l/m;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    iget-object v1, p0, Lbr/com/topaz/l/o;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-object v0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/l/o;->c:Lbr/com/topaz/u0/e;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/u0/e;->a([B)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/l/o;->g:Lbr/com/topaz/l/m;

    invoke-virtual {v0, p1}, Lbr/com/topaz/l/m;->b(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lbr/com/topaz/l/o;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lbr/com/topaz/l/o;->a(Ljava/util/List;)V

    return-void
.end method

.method public c([B)V
    .locals 1

    const-string v0, "ofd_asms_blacklist_sender"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public c()Z
    .locals 1

    const-string v0, "ofd_hb_configuration"

    invoke-virtual {p0, v0}, Lbr/com/topaz/l/o;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Lbr/com/topaz/c/c;
    .locals 2

    :try_start_0
    const-string v0, "ofd_asms_blacklist_url"

    invoke-direct {p0, v0}, Lbr/com/topaz/l/o;->g(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Lbr/com/topaz/c/c;

    invoke-static {v1, v0}, Lbr/com/topaz/u0/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/c/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lbr/com/topaz/c/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lbr/com/topaz/c/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/l/o;->c:Lbr/com/topaz/u0/e;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lbr/com/topaz/u0/e;->a([B)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lbr/com/topaz/l/o;->g:Lbr/com/topaz/l/m;

    invoke-virtual {v0, p1}, Lbr/com/topaz/l/m;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d([B)V
    .locals 1

    const-string v0, "ofd_location_cache"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "ofd_hb_event_list"

    invoke-virtual {p0, v0}, Lbr/com/topaz/l/o;->b(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public e([B)V
    .locals 1

    const-string v0, "ofd_bgp_list"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/l/o;->c:Lbr/com/topaz/u0/e;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/com/topaz/u0/e;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/o;->g:Lbr/com/topaz/l/m;

    invoke-virtual {v1, v0}, Lbr/com/topaz/l/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbr/com/topaz/l/o;->g:Lbr/com/topaz/l/m;

    invoke-virtual {v0, p1}, Lbr/com/topaz/l/m;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public f()Lbr/com/topaz/c/d;
    .locals 2

    :try_start_0
    const-string v0, "ofd_asms_blacklist_sender"

    invoke-direct {p0, v0}, Lbr/com/topaz/l/o;->g(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Lbr/com/topaz/c/d;

    invoke-static {v1, v0}, Lbr/com/topaz/u0/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/c/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lbr/com/topaz/c/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lbr/com/topaz/c/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public f([B)V
    .locals 1

    const-string v0, "ofd_hb_domain_list"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public f(Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p0, p1}, Lbr/com/topaz/l/o;->b(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public g([B)V
    .locals 1

    const-string v0, "ofd_asms_whitelist_sender"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public g()Z
    .locals 1

    const-string v0, "ofd_hb_event_list"

    invoke-virtual {p0, v0}, Lbr/com/topaz/l/o;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lbr/com/topaz/l/o;->p()Lbr/com/topaz/l/g;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/g;->r()Lbr/com/topaz/l/q;

    move-result-object v0

    invoke-virtual {v0}, Lbr/com/topaz/l/q;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbr/com/topaz/l/q;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lbr/com/topaz/l/q;->c()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lbr/com/topaz/l/o;->g:Lbr/com/topaz/l/m;

    invoke-virtual {v2, v1, v0}, Lbr/com/topaz/l/m;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h([B)V
    .locals 1

    const-string v0, "ofd_asms_body_whitelist"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/o/c;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "ofd_dlr_list"

    invoke-direct {p0, v0}, Lbr/com/topaz/l/o;->g(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lbr/com/topaz/o/d;

    invoke-direct {v1}, Lbr/com/topaz/o/d;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lbr/com/topaz/o/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public i([B)V
    .locals 1

    const-string v0, "ofd_hb_configuration"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/j;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "ofd_err_cache"

    invoke-virtual {p0, v0}, Lbr/com/topaz/l/o;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/l/o;->a:Landroid/content/Context;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "ofd_err_cache"

    invoke-virtual {p0, v1}, Lbr/com/topaz/l/o;->b(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "ofd_err_cache"

    invoke-virtual {p0, v2}, Lbr/com/topaz/l/o;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbr/com/topaz/l/o;->f:Lbr/com/topaz/w0/b;

    invoke-interface {v3}, Lbr/com/topaz/w0/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbr/com/topaz/l/o;->f:Lbr/com/topaz/w0/b;

    invoke-interface {v3}, Lbr/com/topaz/w0/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbr/com/topaz/l/o;->e:Lbr/com/topaz/heartbeat/crypto/MidCrypt;

    invoke-interface {v3, v1, v2}, Lbr/com/topaz/heartbeat/crypto/MidCrypt;->c([BLjava/lang/String;)[B

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const-class v1, [Lbr/com/topaz/l/j;

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lbr/com/topaz/l/j;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public j([B)V
    .locals 1

    const-string v0, "ofd_dlr_list"

    invoke-virtual {p0, v0, p1}, Lbr/com/topaz/l/o;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public k()Z
    .locals 1

    const-string v0, "ofd_bgp_list"

    invoke-virtual {p0, v0}, Lbr/com/topaz/l/o;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ofd_bgp_list"

    invoke-direct {p0, v1}, Lbr/com/topaz/l/o;->g(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method

.method public m()Lbr/com/topaz/c/d;
    .locals 2

    :try_start_0
    const-string v0, "ofd_asms_whitelist_sender"

    invoke-direct {p0, v0}, Lbr/com/topaz/l/o;->g(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Lbr/com/topaz/c/d;

    invoke-static {v1, v0}, Lbr/com/topaz/u0/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/c/d;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lbr/com/topaz/c/d;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lbr/com/topaz/c/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbr/com/topaz/l/z;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "ofd_nfl_list"

    invoke-direct {p0, v0}, Lbr/com/topaz/l/o;->g(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lbr/com/topaz/l/o;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    new-instance v2, Lbr/com/topaz/l/a0;

    invoke-direct {v2, v1}, Lbr/com/topaz/l/a0;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v1}, Lbr/com/topaz/l/a0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public o()V
    .locals 1

    const-string v0, "ofd_hb_configuration"

    invoke-virtual {p0, v0}, Lbr/com/topaz/l/o;->d(Ljava/lang/String;)V

    return-void
.end method

.method public p()Lbr/com/topaz/l/g;
    .locals 3

    const-string v0, "ofd_hb_configuration"

    invoke-direct {p0, v0}, Lbr/com/topaz/l/o;->g(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lbr/com/topaz/l/g;

    iget-object v2, p0, Lbr/com/topaz/l/o;->d:Lbr/com/topaz/u0/r;

    invoke-direct {v1, v2}, Lbr/com/topaz/l/g;-><init>(Lbr/com/topaz/u0/r;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lbr/com/topaz/l/g;->a(Ljava/lang/String;)Lbr/com/topaz/l/g;

    move-result-object v0

    return-object v0
.end method

.method public q()[B
    .locals 1

    :try_start_0
    const-string v0, "ofd_location_cache"

    invoke-virtual {p0, v0}, Lbr/com/topaz/l/o;->b(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Lbr/com/topaz/c/c;
    .locals 2

    :try_start_0
    const-string v0, "ofd_asms_body_whitelist"

    invoke-direct {p0, v0}, Lbr/com/topaz/l/o;->g(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Lbr/com/topaz/c/c;

    invoke-static {v1, v0}, Lbr/com/topaz/u0/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbr/com/topaz/c/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lbr/com/topaz/c/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lbr/com/topaz/c/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public s()Z
    .locals 1

    const-string v0, "ofd_hb_domain_list"

    invoke-virtual {p0, v0}, Lbr/com/topaz/l/o;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
