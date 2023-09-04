.class final synthetic Lcom/google/firebase/b;
.super Ljava/lang/Object;
.source "FirebaseCommonRegistrar.java"

# interfaces
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# static fields
.field private static final a:Lcom/google/firebase/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/b;

    invoke-direct {v0}, Lcom/google/firebase/b;-><init>()V

    sput-object v0, Lcom/google/firebase/b;->a:Lcom/google/firebase/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;
    .locals 1

    sget-object v0, Lcom/google/firebase/b;->a:Lcom/google/firebase/b;

    return-object v0
.end method


# virtual methods
.method public extract(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
