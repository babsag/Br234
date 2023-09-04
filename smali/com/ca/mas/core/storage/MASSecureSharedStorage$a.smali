.class Lcom/ca/mas/core/storage/MASSecureSharedStorage$a;
.super Lcom/ca/mas/core/security/DefaultEncryptionProvider;
.source "MASSecureSharedStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/storage/MASSecureSharedStorage;->getEncryptionProvider()Lcom/ca/mas/core/security/EncryptionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ca/mas/core/storage/MASSecureSharedStorage;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/storage/MASSecureSharedStorage;Landroid/content/Context;Lcom/ca/mas/core/security/KeyStorageProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/storage/MASSecureSharedStorage$a;->b:Lcom/ca/mas/core/storage/MASSecureSharedStorage;

    invoke-direct {p0, p2, p3}, Lcom/ca/mas/core/security/DefaultEncryptionProvider;-><init>(Landroid/content/Context;Lcom/ca/mas/core/security/KeyStorageProvider;)V

    return-void
.end method


# virtual methods
.method protected getKeyAlias()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ca.mas.ACCOUNT_MANAGER_SECRET"

    return-object v0
.end method
