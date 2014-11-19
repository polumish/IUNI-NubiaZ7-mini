.class public final Lcom/sogou/sledog/core/util/c/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sogou/sledog/core/util/c/b;->u(Ljava/lang/String;)Z

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v1, v0

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2}, Lcom/sogou/sledog/core/util/c;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/sogou/sledog/core/util/c;->a(Ljava/io/Closeable;)V

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x1000

    :try_start_2
    new-array v4, v4, [B

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sogou/sledog/core/util/c/e;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x1000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_2
    const/4 v5, 0x0

    const/16 v6, 0x1000

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lcom/sogou/sledog/core/util/c;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/sogou/sledog/core/util/c;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v2}, Lcom/sogou/sledog/core/util/c;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/sogou/sledog/core/util/c;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method
